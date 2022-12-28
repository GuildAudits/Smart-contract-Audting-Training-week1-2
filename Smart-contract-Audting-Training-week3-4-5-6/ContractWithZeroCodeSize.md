# Solidity Attack Vectors: #2 - Contract With Zero Code Size

Welcome to number two of my Solidity attack vectors series. In this article, I will be talking about "Contracts with zero code size" – the meaning, applications, and how they are being used by malicious actors.

As the name implies, these are contracts without any code in them. But is that possible? Can a contract have no code? Technically, yes!

I will first explain what this means before going into how it is being used as an attack vector in Solidity or smart contracts. By the time I get into it as an attack vector, the dots will begin joining and everything will make sense. Let's get started!

## How does this happen?

### The init code

In Solidity, when a contract is being deployed, something called the "init code" or "creation code" is generated. When a smart contract is deployed, the Solidity code is converted to byte code which the EVM interprets with OPCODES. To put it simply, the init code is just the "byte code" of a smart contract but with the constructor arguments and logic included. This init code fragment is executed first and whatever is specified inside the constructor runs. The EVM also checks if the constructor is payable or not, and if ether was sent along with the contract constructor (payable constructor) or not. If there is a failed logic, the deployment is cancelled or reverted.

During the execution of this init code, the code storage for a contract is empty, even if the contract has code. It remains empty until the init code finishes running and the runtime code (which is the outer contract byte code we get with our ABI when we deploy a contract with ethersjs, for example) is saved in storage. I am not going into depth about EVM byte codes because that is outside the scope of this article.

## Using this as an attack vector

Sometimes you might want to prevent your smart contract from being called by other smart contracts for any reason, and you might think, "How am I going to do this?" There is a perfect way to achieve this – by using Solidity assembly to check the code size of the address interacting with your contract and having a logic that reverts the transaction if it has a code size.

For example:

```solidity
pragma solidity ^0.8.0;

contract rejectContracts {

    function isContract(address account) public view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    function TakeAllTheMoney(address account) public {
        require(!isContract(account), "Error: no contract allowed");
        payable(account).transfer(address(this).balance);
    }
}
```

The above contract has a function "isContract" that checks if the caller of a function has a code size using assembly in Solidity. If it does, it reverts. It does this because Externally owned accounts (EOAs) in Ethereum do not support code natively, but Contract accounts (CAs) do.

As simple as it is, this can be a big vulnerability when considering our earlier explanation that contracts don't have code size during deployments. If a malicious contract is being deployed on the blockchain and at the same time calls this function that checks if an account or function caller has code size or not, it will return false, meaning that it does not have any code in it despite being a contract.

## How to prevent this?

One simple way to prevent this is by using the "isContract" function technique and also having an extra require statement that checks that the "msg.sender" (function caller address) is equal to the "tx.origin" (transaction origin address)

For example:

```solidity
pragma solidity ^0.8.0;

contract rejectContracts {

    function isContract(address account) public view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    function TakeAllTheMoney(address account) public {
        require(!isContract(account), "Error: no contract allowed");
        //check if the transaction origin address == the current function caller
        require(msg.sender == tx.origin, "Error: no contract allowed");
        payable(account).transfer(address(this).balance);
    }
}
```

Here, we check that the transaction originated from the current caller of our contract. This is because contract accounts cannot start a transaction by themselves and need an EOA (Externally Owned Account) to start the transaction. So, if the transaction origin isn't the current caller, then that means it's a contract account and we revert the transaction.

Having introduced "tx.origin" here, I will be talking about phishing with tx.origin in my next article.

Thank you for reading. I hope this helps you to better understand how contracts with zero code size can be used as an attack vector in Solidity and how you can prevent that.
