# Smart Contracts and Solidity
This chapter builds on previous knowledge that there are two different types of accounts in Ethereum: externally owned accounts (EOAs) and contract accounts. EOAs are controlled by users, often via software such as a wallet application that is external to the Ethereum platform. In contrast, contract accounts are controlled by program code (also commonly referred to as “smart contracts”) that is executed by the Ethereum Virtual Machine.

## What is a Smart Contract?
This section refers to smart contracts as immutable computer programs that run deterministically in the context of an Ethereum Virtual Machine as part of the Ethereum network protocol—i.e., on the decentralized Ethereum world computer.

>Computer programs: 
Smart contracts are simply computer programs. The word “contract” has no legal meaning in this context.

>Immutable: 
Once deployed, the code of a smart contract cannot change. Unlike with traditional software, the only way to modify a smart contract is to deploy a new instance.

>Deterministic: 
The outcome of the execution of a smart contract is the same for everyone who runs it, given the context of the transaction that initiated its execution and the state of the Ethereum blockchain at the moment of execution.

>EVM context: 
Smart contracts operate with a very limited execution context. They can access their own state, the context of the transaction that called them, and some information about the most recent blocks.

>Decentralized world computer: 
The EVM runs as a local instance on every Ethereum node, but because all instances of the EVM operate on the same initial state and produce the same final state, the system as a whole operates as a single "world computer."

## Life Cycle of a Smart Contract
This section explains how Smart contracts are typically written in a high-level language, such as Solidity. But in order to run, they must be compiled to the low-level bytecode that runs in the EVM. Once compiled, they are deployed on the Ethereum platform using a special contract creation transaction.

## Introduction to Ethereum High-Level Languages
Currently supported high-level programming languages for smart contracts include (ordered by approximate age):

>LLL: 
A functional (declarative) programming language, with Lisp-like syntax. It was the first high-level language for Ethereum smart contracts but is rarely used today.

>Serpent: 
A procedural (imperative) programming language with a syntax similar to Python. Can also be used to write functional (declarative) code, though it is not entirely free of side effects.

>Solidity: 
A procedural (imperative) programming language with a syntax similar to JavaScript, C++, or Java. The most popular and frequently used language for Ethereum smart contracts.

>Vyper: 
A more recently developed language, similar to Serpent and again with Python-like syntax. Intended to get closer to a pure-functional Python-like language than Serpent, but not to replace Serpent.

>Bamboo:
A newly developed language, influenced by Erlang, with explicit state transitions and without iterative flows (loops). Intended to reduce side effects and increase auditability. Very new and yet to be widely adopted.

## Building a Smart Contract with Solidity

This section shows how to setup, download and install solidity along with development environments and compiling

## The Ethereum Contract ABI
This section explains how in Ethereum, the ABI is used to encode contract calls for the EVM and to read data out of transactions. The purpose of an ABI is to define the functions in the contract that can be invoked and describe how each function will accept arguments and return its result.

## Programming with Solidity
This section shows the capabilities and data types in solidity which include:

>Boolean (bool): 
Boolean value, true or false, with logical operators ! (not), && (and), || (or), == (equal), and != (not equal).

>Integer (int, uint): 
Signed (int) and unsigned (uint) integers, declared in increments of 8 bits from int8 to uint256. Without a size suffix, 256-bit quantities are used, to match the word size of the EVM.

>Fixed point (fixed, ufixed): 
Fixed-point numbers, declared with (u)fixedMxN where M is the size in bits (increments of 8 up to 256) and N is the number of decimals after the point (up to 18); e.g., ufixed32x2.

>Address: 
A 20-byte Ethereum address. The address object has many helpful member functions, the main ones being balance (returns the account balance) and transfer (transfers ether to the account).

>Byte array (fixed): 
Fixed-size arrays of bytes, declared with bytes1 up to bytes32.

>Byte array (dynamic): 
Variable-sized arrays of bytes, declared with bytes or string.

>Enum: 
User-defined type for enumerating discrete values: enum NAME {LABEL1, LABEL 2, ...}.

>Arrays: 
An array of any type, either fixed or dynamic: uint32[][5] is a fixed-size array of five dynamic arrays of unsigned integers.

>Struct: 
User-defined data containers for grouping variables: struct NAME {TYPE1 VARIABLE1; TYPE2 VARIABLE2; ...}.

>Mapping: 
Hash lookup tables for key => value pairs: mapping(KEY_TYPE => VALUE_TYPE) NAME.

## Predifined Global Variables and Functions
In this section we will examine the variables and functions you can access from within a smart contract in Solidity.

>msg.sender: 
We’ve already used this one. It represents the address that initiated this contract call, not necessarily the originating EOA that sent the transaction. If our contract was called directly by an EOA transaction, then this is the address that signed the transaction, but otherwise it will be a contract address.

>msg.value: 
The value of ether sent with this call (in wei).

>msg.gas: 
The amount of gas left in the gas supply of this execution environment. This was deprecated in Solidity v0.4.21 and replaced by the gasleft function.

>msg.data: 
The data payload of this call into our contract.

>msg.sig: 
The first four bytes of the data payload, which is the function selector.

## Transaction context

The tx object provides a means of accessing transaction-related information:

>tx.gasprice: 
The gas price in the calling transaction.

>tx.origin: 
The address of the originating EOA for this transaction. WARNING: unsafe!

## Block context

The block object contains information about the current block:

>block.blockhash(__blockNumber__): 
The block hash of the specified block number, up to 256 blocks in the past. Deprecated and replaced with the blockhash function in Solidity v0.4.22.

>block.coinbase: 
The address of the recipient of the current block’s fees and block reward.

>block.difficulty: 
The difficulty (proof of work) of the current block.

>block.gaslimit: 
The maximum amount of gas that can be spent across all transactions included in the current block.

>block.number: 
The current block number (blockchain height).

>block.timestamp: 
The timestamp placed in the current block by the miner (number of seconds since the Unix epoch).

## Address object

Any address, either passed as an input or cast from a contract object, has a number of attributes and methods:

>address.balance: 
The balance of the address, in wei. For example, the current contract balance is address(this).balance.

>address.transfer(__amount__): 
Transfers the amount (in wei) to this address, throwing an exception on any error. We used this function in our Faucet example as a method on the msg.sender address, as msg.sender.transfer.

>address.send(__amount__): 
Similar to transfer, only instead of throwing an exception, it returns false on error. WARNING: always check the return value of send.

>address.call(__payload__): 
Low-level CALL function—can construct an arbitrary message call with a data payload. Returns false on error. WARNING: unsafe—recipient can (accidentally or maliciously) use up all your gas, causing your contract to halt with an OOG exception; always check the return value of call.

>address.delegatecall(__payload__): 
Low-level DELEGATECALL function, like callcode(...) but with the full msg context seen by the current contract. Returns false on error. WARNING: advanced use only!

## Built-in functions

Other functions worth noting are:

>addmod, mulmod: 
For modulo addition and multiplication. For example, addmod(x,y,k) calculates (x + y) % k.

>keccak256, sha256, sha3, ripemd160: 
Functions to calculate hashes with various standard hash algorithms.

>ecrecover: 
Recovers the address used to sign a message from the signature.

>selfdestruct(__recipient_address__): 
Deletes the current contract, sending any remaining ether in the account to the recipient address.

>this: 
The address of the currently executing contract account.








