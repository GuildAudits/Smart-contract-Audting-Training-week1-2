# GUILD-AUDIT-Smart-contract-Auditing-Training

This is the review of Mastering Ethereum and five chapters of the Secureum book.

# Mastering Ethereum Review

## CHAPTER ONE - WHAT IS ETHEREUM
Ethereum is an open source, globally decentralized computing infrastructure that executes programs called smart contracts. It uses a blockchain to synchronize and store the system’s state changes, along with a cryptocurrency called ether to meter and constrain execution resource costs.

Ethereum is intended to be a general-purpose programmable blockchain with a virtual machine capable of running code of arbitrary and limitless complexity, in contrast to Bitcoin, which has a fairly restricted scripting language. Ethereum's language is Turing complete, whereas Bitcoin's Script language is purposefully limited to basic true/false evaluation of spending conditions. This means that Ethereum can directly serve as a general-purpose computer.

Ethereum’s development was planned over four distinct stages, with major changes occurring at each stage. A stage may include subreleases, known as "hard forks," that change functionality in a way that is not backward compatible.

Frontier, Homestead, Metropolis, and Serenity are the four primary development phases.

Ethereum is a Turing-complete system and a UTM because it can read from and write to memory while running a stored program in a state machine called the Ethereum Virtual Machine. Given the restrictions of finite memory, Ethereum can calculate any algorithm that can be calculated by any Turing machine.

A DApp is, at the very least, a smart contract and a web user interface. More broadly, a DApp is a web application that is built on top of open, decentralized, peer-to-peer infrastructure services.

A DApp is composed of at least:

* Smart contracts on a blockchain

* A web frontend user interface


## CHAPTER TWO - INTRO
Ether, often known as "ETH," is the monetary unit used by Ethereum.

Ether is broken into smaller units, all the way down to the smallest unit, called wei. Wei (1 * 1018 or 1,000,000,000,000,000,000) is equal to one ether.

The term "wallet" refers to a piece of software that facilitates managing your Ethereum account. An Ethereum wallet is, in essence, your entryway into the Ethereum network. You can create and broadcast transactions on its behalf, and it keeps your keys

for a wallet application to work, it must have access to your private keys, so it is vital that you only download and use wallet applications from sources you trust

Examples of trusted wallets are MetaMask, Jaxx, MyEtherWallet (MEW), Emerald Wallet e.t.c

There are multiple Ethereum networks, By default, most wallet will connect to the main network. The other choices are public testnets, any Ethereum node of your choice, or nodes running private blockchains on your own computer (localhost):

The testenet are basically used for testing.

There are Two types of Account on Ethereum namely: Externally Owned Accounts (EOAs) and Contracts

* Externally Owned Accounts (EOAs)
Externally owned accounts are those that have a private key; having the private key means control over access to funds or contracts. This is what a wallet give it's users.

* Contracts

A contract account has smart contract code, which a simple EOA can’t have. Furthermore, a contract account does not have a private key. Instead, it is owned (and controlled) by the logic of its smart contract code: the software program recorded on the Ethereum blockchain at the contract account’s creation and executed by the EVM.

Ethereum has many different high-level languages, all of which can be used to write a contract. Solidity is by far the most popular high-level language for creating smart contracts. Dr. Gavin Wood created solidity.

## CHAPTER THREE - Ethereum Clients
A software program that implements the Ethereum specification and interacts with other Ethereum clients over the peer-to-peer network is known as an Ethereum client. If they adhere to the reference specification and the agreed-upon communications protocols, several Ethereum clients can communicate with one another. These various clients all "speak" the same protocol and adhere to the same rules, despite the fact that they were developed by several teams using various programming languages. They can all be used to function on and communicate with the same Ethereum network.

Ethereum is defined by a formal specification called the "Yellow Paper" 

There are numerous Ethereum-based networks that substantially follow the formal specifications outlined in the Ethereum Yellow Paper, although they may or may not communicate with one another.

Examples of Ethereum-based networks are Ethereum, Ethereum Classic, Ella, Expanse, Ubiq, Musicoin, and many others.

Currently, there are six main implementations of the Ethereum protocol, written in six different languages

* Parity, written in Rust
* Geth, written in Go
* cpp-ethereum, written in C++
* pyethereum, written in Python
* Mantis, written in Scala
* Harmony, written in Java

The two most common client include *Parity and Geth*. 

The health, resilience, and censorship resistance of blockchains depend on them having many independently operated and geographically dispersed full nodes.

Running a full node will incur a cost in hardware resources and bandwidth. A full node may download up to 300 GB of data (as of March 2021, depending on the client configuration) and store it on a local hard drive.

running a remote client, which does not store a local copy of the blockchain or validate blocks and transactions. These clients offer the functionality of a wallet and can create and broadcast transactions. Remote clients can be used to connect to existing networks, such as your own full node, a public blockchain, a public or permissioned (proof-of-authority) testnet, or a private local blockchain.

Hardware Requirements for a Full Node:

* CPU with 2+ cores
* At least 300 GB free storage space
* 4 GB RAM minimum with an SSD, 8 GB+ if you have an HDD
* 8 MBit/sec download internet service

To sync in a reasonable amount of time and store all the development tools, libraries, clients, and blockchain, You need:

* Fast CPU with 4+ cores
* 16 GB+ RAM
* Fast SSD with at least 500 GB free space
* 25+ MBit/sec download internet service

[Read more](https://github.com/ethereumbook/ethereumbook/blob/develop/03clients.asciidoc)

## CHAPTER FOUR - KEY & ADDRESSES
Cryptography is one of the fundamental technologies of Ethereum.

Cryptography means *secret writing* in Greek, but the study of cryptography encompasses more than just secret writing, which is referred to as *encryption*. Cryptography can also be used to prove knowledge of a secret without revealing that secret (e.g., with a digital signature), or to prove the authenticity of data (e.g., with digital fingerprints, also known as "hashes"). 

Public key cryptography (PKC), which controls ownership of funds through the use of private keys and addresses, is some of the cryptography employed by Ethereum.

Account addresses are obtained directly from private keys: a single Ethereum address, also known as an account, is uniquely determined by a private key.
The private keys are at the heart of all user interaction with Ethereum. Therefore, private keys should remain private and never appear in messages passed to the network, nor should they be stored on-chain; only account addresses and digital signatures are ever transmitted and stored on the Ethereum system.

Access and control of funds is achieved with digital signatures, which are also created using the private key. The digital signatures in Ethereum transactions prove the true owner of the funds, because they prove ownership of the private key.

An Ethereum address for an EOA is generated from the public key portion of a key pair.

Public key cryptography (also called "asymmetric cryptography") uses unique keys to secure information. These keys are based on mathematical functions that have a special property: it is easy to calculate them, but hard to calculate their inverse. Based on these functions, cryptography enables the creation of digital secrets and unforgeable digital signatures, which are secured by the laws of mathematics.

In Ethereum, the public-private key pair is created using public key cryptography, also referred to as asymmetric cryptography. Because the public key is obtained from the private key, they are referred to as a "pair". Together, they provide a publicly accessible account handle (the address), private control over access to any ether in the account, and whatever authentication the account requires when using smart contracts, all of which collectively comprise an Ethereum account. The private key restricts access because it is the one and only piece of data required to generate digital signatures, which are needed to sign transactions in order to use any account funds. Additionally, the authentication of contract owners or users is done via digital signatures.

A digital signature can be created to sign any message(Ethereum Transaction). *elliptic curve* cryptography—provides a way for the message (i.e., the transaction details) to be combined with the private key to create a code that can only be produced with knowledge of the private key.

The *private key* is used to create signatures required to spend ether by proving ownership of funds used in a transaction. The private key must remain secret at all times, because revealing it to third parties is equivalent to giving them control over the ether and contracts secured by that private key. The private key must also be backed up and protected from accidental loss. If it’s lost, it cannot be recovered and the funds secured by it are lost forever too.

The Ethereum private key is just a number, the first and most important step in generating keys is to find a secure source of entropy, or randomness by picking a number between 1 and 2^256.

An Ethereum public key is a point on an elliptic curve, In simpler terms, it is two numbers, joined together which are produced from the private key by a calculation that can only go one way.
If you have the private key, it is straightforward to compute the public key, but you cannot calculate the private key from the public key.

Elliptic Curve Libraries include 
* OpenSSL
* libsecp256k1

A hash function is any function that can be used to map data of arbitrary size to data of fixed size. Cryptographic hash functions are a special subcategory.

A cryptographic hash function is a one-way hash function that maps data of arbitrary size to a fixed-size string of bits.

Main properties of cryptographic hash functions:
* Determinism
* Verifiability
* Noncorrelation
* Irreversibility
* Collision protection

Ethereum uses the Keccak-256 cryptographic hash. Keccak-256 was designed as a candidate for the SHA-3 Cryptographic Hash Function

Ethereum addresses are hexadecimal numbers, identifiers derived from the last 20 bytes of the Keccak-256 hash of the public key.

## CHAPTER FIVE - WALLETS

A wallet is a software application that serves as the primary user interface to Ethereum. The wallet controls access to a user’s money, managing keys and addresses, tracking the balance, and creating and signing transactions. In addition, some Ethereum wallets can also interact with contracts, such as ERC20 tokens.
From a programmer’s perspective, the word wallet refers to the system used to store and manage a user’s keys.

Ethereum wallets contain keys, not ether or tokens. Wallets are like keychains containing pairs of private and public keys. Users sign transactions with the private keys, thereby proving they own the ether. The ether is stored on the blockchain.

There are two primary types of wallets:
* Nondeterministic wallet
Where each key is independently generated from a different random number. The keys are not related to each other. This type of wallet is also known as a JBOK wallet, from the phrase "Just a Bunch of Keys.

* Deterministic wallet
Where all the keys are derived from a single master key, known as the seed. All the keys in this type of wallet are related to each other and can be generated again if one has the original seed. 

Mnemonic code words (BIP-39) are word sequences that encode a random number used as a seed to derive a deterministic wallet. The sequence of words is sufficient to recreate the seed, and from there recreate the wallet and all the derived keys

## CHAPTER SIX - TRANSACTIONS
Transactions are signed messages originated by an externally owned account (EOA), transmitted by the Ethereum network, and recorded on the Ethereum blockchain. Transactions are the only things that can trigger a change of state, or cause a contract to execute in the EVM.

A transaction is a serialized binary message that contains the following data:

* Nonce
A sequence number, issued by the originating EOA, used to prevent message replay.
It is the number of transactions sent from this address or, in the case of accounts with associated code, the number of contract-creations made by this account.

* Gas price
The amount of ether (in wei) that the originator is willing to pay for each unit of gas

* Gas limit
The maximum amount of gas the originator is willing to buy for this transaction

* Recipient
The destination Ethereum address

* Value
The amount of ether (in wei) to send to the destination

* Data
The variable-length binary data payload

* v,r,s
The three components of an ECDSA digital signature of the originating EOA

Gas is the fuel of Ethereum. Gas is not ether—it’s a separate virtual currency with its own exchange rate against ether. Ethereum uses gas to control the amount of resources that a transaction can use.  The open-ended (Turing-complete) computation model requires some form of metering in order to avoid denial-of-service attacks or inadvertently resource-devouring transactions.

The gasPrice field in a transaction allows the transaction originator to set the price they are willing to pay in exchange for gas. The price is measured in wei per gas unit. The higher the gasPrice, the faster the transaction is likely to be confirmed. 

The gasLimit gives the maximum number of units of gas the transaction originator is willing to buy in order to complete the transaction. For simple payments, meaning transactions that transfer ether from one EOA to another EOA, the gas amount needed is fixed at 21,000 gas units. To calculate how much ether that will cost, you multiply 21,000 by the gasPrice you’re willing to pay.

Transactions can have both value and data, only value, only data, or neither value nor data. All four combinations are valid.
A transaction with only value is a payment. A transaction with only data is an invocation. A transaction with both value and data is both a payment and an invocation. A transaction with neither value nor data is most likely a waste of gas! However, it is still feasible.

When your transaction contains data, it is most likely addressed to a contract address.

The data payload sent to an ABI-compatible contract (which you can assume all contracts are) is a hex-serialized encoding of:

* Function selector: 
The first 4 bytes of the Keccak-256 hash of the function’s prototype. This allows the contract to unambiguously identify which function you wish to invoke.
    
* Function arguments: 
encoded according to the rules for the various elementary types defined in the ABI specification.


Contract creation transactions are sent to a special destination address called the zero address(0x0). This address represents neither an EOA (there is no corresponding private–public key pair) nor a contract. It can never spend ether or initiate a transaction. It is only used as a destination, with the special meaning "create this contract." 
It sometimes receives payments from various addresses, either it is by accident, resulting in the loss of ether, or it is an intentional ether burn (deliberately destroying ether by sending it to an address from which it can never be spent).

The Elliptic Curve Digital Signature Algorithm.
The digital signature algorithm used in Ethereum is the Elliptic Curve Digital Signature Algorithm (ECDSA). It’s based on elliptic curve private–public key pairs
A digital signature serves three purposes in Ethereum. First, the signature proves that the owner of the private key, who is by implication the owner of an Ethereum account, has authorized the spending of ether, or execution of a contract. Secondly, it guarantees non-repudiation: the proof of authorization is undeniable. Thirdly, the signature proves that the transaction data has not been and cannot be modified by anyone after the transaction has been signed.
A digital signature is a mathematical scheme that consists of two parts. The first part is an algorithm for creating a signature, using a private key (the signing key), from a message (which in our case is the transaction). The second part is an algorithm that allows anyone to verify the signature by only using the message and a public key.

To sign a transaction in Ethereum, the originator must:

* Create a transaction data structure, containing nine fields: nonce, gasPrice, gasLimit, to, value, data, chainID, 0, 0.
* Produce an RLP-encoded serialized message of the transaction data structure.
* Compute the Keccak-256 hash of this serialized message.
* Compute the ECDSA signature, signing the hash with the originating EOA’s private key.
* Append the ECDSA signature’s computed v, r, and s values to the transaction.


## CHAPTER SEVEN - Smart Contracts and Solidity
There are two different types of accounts in Ethereum:

* Externally owned accounts (EOAs) 
    EOAs are managed by users, generally using software such as a wallet application.

* Contract accounts
    Contract accounts are managed by program code (smart contracts) that is run by the Ethereum Virtual Machine.

*smart contract* is a set of promises, specified in digital form, including protocols within which the parties perform on the other promises; coined in the 1990s by cryptographer Nick Szabo.The Term *Smart contract* has eveolved with time and with the invention of decentralized blockchain. In the context of an Ethereum Virtual Machine, smart contracts refer to immutable computer programs that run deterministically as part of the Ethereum network protocol—i.e., on the decentralized Ethereum world computer.
Smart contracts are typically written in a high-level language, such as Solidity. But in order to run, they must be compiled to the low-level bytecode that runs in the EVM. Once compiled, they are deployed on the Ethereum platform using a special contract creation transaction, which is identified as such by being sent to the special contract creation address, namely 0x0.
Note that, unlike with EOAs, there are no keys associated with an account created for a new smart contract.
Importantly, contracts only run if they are called by a transaction. Transactions are either successfully terminated or reverted.
It is important to remember that a contract’s code cannot be changed.

*The EVM* is a virtual machine that runs a special form of code called EVM bytecode. Even though it is possible to directly write smart contracts in bytecode, EVM bytecode is relatively cumbersome and extremely challenging for programmers to read and understand. The majority of Ethereum developers instead create their programs in a high-level language that is then translated into bytecode by a compiler.

Currently supported high-level programming languages for smart contracts include (ordered by approximate age):
* LLL
* Serpent
* Solidity
* Vyper
* Bamboo

Solidity was created by Dr. Gavin Wood as a language explicitly for writing smart contracts with features to directly support execution in the decentralized environment of the Ethereum world computer.
Solidity compiler, *solc*, which converts programs written in the Solidity language to EVM bytecode. 
Solidity follows a versioning model, Solidity programs can contain a pragma directive that specifies the minimum and maximum versions of Solidity that it is compatible with, and can be used to compile your contract e.g.(pragma solidity ^0.6.0;)

An application binary interface is an interface between two program modules; often, between the operating system and user programs. It defines how data structures and functions are accessed in machine code.

Solidity Data Types:

* Boolean (bool)
* Integer (int, uint)
* Fixed point (fixed, ufixed)
* Address
* Byte array (fixed)
* Byte array (dynamic)
* Enum
* Arrays
* Struct
* Mapping

Solidity value literals that can be used to calculate different units:

* Time units
* Ether units

Solidity Predefined Global Variables and Functions:

The msg object is the transaction call (EOA originated) or message call (contract originated) that launched this contract execution

* msg.sender
* msg.value
* msg.gas
* msg.data
* msg.sig

The tx object provides a means of accessing transaction-related information:

* tx.gasprice
* tx.origin

The block object contains information about the current block:
block.blockhash(__blockNumber__)

* block.coinbase
* block.difficulty
* block.gaslimit
* block.number
* block.timestamp

Any address, either passed as an input or cast from a contract object, has a number of attributes and methods:

* address.balance
* address.transfer(__amount__)
* address.send(__amount__)
* address.call(__payload__)
* address.delegatecall(__payload__)

The tx object provides a means of accessing transaction-related information:

* tx.gasprice
* tx.origin

The block object contains information about the current block:
block.blockhash(__blockNumber__)

* block.coinbase
* block.difficulty
* block.gaslimit
* block.number
* block.timestamp

Any address, either passed as an input or cast from a contract object, has a number of attributes and methods:

* address.balance
* address.transfer(__amount__)
* address.send(__amount__)
* address.call(__payload__)
* address.delegatecall(__payload__)

Built-in functions:

* addmod, mulmod
* keccak256, sha256, sha3, ripemd160
* ecrecover
* selfdestruct(__recipient_address__)
* this

Solidity offers two other object types that are similar to a contract:

* interface
* library

Components of a declare function in Solidity is as follows:

* FunctionName
* parameters

Function’s visibility includes:

* public
* private
* internal
* external

Function’s behaviour includes:

* view
* pure
* payable

[read more](https://github.com/ethereumbook/ethereumbook/blob/develop/07smart-contracts-solidity.asciidoc)



## CHAPTER EIGHT - Smart Contracts and Vyper

Vyper is an experimental, contract-oriented programming language for the Ethereum Virtual Machine that strives to provide superior auditability, by making it easier for developers to produce intelligible code. 

The three basic categories of trace in smart Contract vulnerabilities:
* Suicidal contracts
* Greedy contracts
* Prodigal contracts

Vulnerabilities are introduced into smart contracts via code, undesirable smart contract code evidently results in the unexpected loss of funds. 

Vyper is designed to make it easier to write secure code, or equally to make it more difficult to accidentally write misleading or vulnerable code.
One of the ways in which Vyper tries to make unsafe code harder to write is by deliberately omitting some of Solidity’s features.

Features omitted by Vyper:
* Modifiers
 modifier enforces on a function.
* Class Inheritance
Inheritance allows programmers to harness the power of prewritten code by acquiring preexisting functionality, properties, and behaviors from existing software libraries. Inheritance is powerful and promotes the reuse of code.
Solidity supports multiple inheritance as well as polymorphism, but while these are key features of object-oriented programming, Vyper does not support them.

* Inline Assembly
Inline assembly gives developers low-level access to the Ethereum Virtual Machine, allowing Solidity programs to perform operations by directly accessing EVM instructions
Vyper considers the loss of readability to be too high a price to pay for the extra power, and thus does not support inline assembly.

* Function Overloading
Function overloading allows developers to write multiple functions of the same name. Which function is used on a given occasion depends on the types of the arguments supplied.
Having multiple function definitions with the same name taking different arguments can be confusing, so Vyper does not support function overloading.

* Variable Typecasting
There are two sorts of typecasting: implicit and explicit
Implicit typecasting is often performed at compile time. recent version of Vyper does not support Implicit typecasting.
Vyper has a convert function to perform explicit casts. 

* Infinite Loop



## CHAPTER NINE - SMART CONTRACT SECURITY
Security is one of the most important considerations when writing smart contracts. 
As with other programs, a smart contract will execute exactly what is written, which is not always what the programmer intended. All smart contracts are public, and any user can interact with them simply by creating a transaction. Any vulnerability can be exploited, and losses are almost always impossible to recover.

Smart contract Security Best Practices:

* Minimalism/simplicity
* Code reuse
* Code quality
* Readability/auditability
* Test coverage

Snart Contract Security Risks and Antipatternss includes:

1. Reentrancy: 

One of the features of Ethereum smart contracts is their ability to call and utilize code from other external contracts. Contracts also typically handle ether, and as such often send ether to various external user addresses. These operations require the contracts to submit external calls. These external calls can be hijacked by attackers, who can force the contracts to execute further code (through a fallback function), including calls back into themselves.

An attacker can carefully construct a contract at an external address that contains malicious code in the fallback function. Thus, when a contract sends ether to this address, it will invoke the malicious code.

*Preventative Techniques*
There are a number of common techniques that help avoid potential reentrancy vulnerabilities in smart contracts. The first is to (whenever possible) use the built-in transfer function when sending ether to external contracts. 
The second technique is to ensure that all logic that changes state variables happens before ether is sent out of the contract (or any external call).

2. Arithmetic Over/Underflows: 

The Ethereum Virtual Machine specifies fixed-size data types for integers. This means that an integer variable can represent only a certain range of numbers.variables in Solidity can be exploited if user input is unchecked and calculations are performed that result in numbers that lie outside the range of the data type that stores them.

An over/underflow occurs when an operation is performed that requires a fixed-size variable to store a number (or piece of data) that is outside the range of the variable’s data type.

*Preventative Techniques*
The current conventional technique to guard against under/overflow vulnerabilities is to use or build mathematical libraries that replace the standard math operators addition, subtraction, and multiplication (division is excluded as it does not cause over/underflows and the EVM reverts on division by 0).

3. Unexpected Ether: 

Typically, when ether is sent to a contract it must execute either the fallback function or another function defined in the contract. There are two exceptions to this, where ether can exist in a contract without having executed any code. Contracts that rely on code execution for all ether sent to them can be vulnerable to attacks where ether is forcibly sent. 

There are two ways in which ether can (forcibly) be sent to a contract without using a payable function or executing any code on the contract:
* Self-destruct/suicide
* Pre-sent ether

*Preventative Techniques*
This sort of vulnerability typically arises from the misuse of this.balance. Contract logic, when possible, should avoid being dependent on exact values of the balance of the contract, because it can be artificially manipulated.

4. Delegate call: 
The DELEGATECALL opcode is almost identical, except that the code executed at the targeted address is run in the context of the calling contract, and msg.sender and msg.value remain unchanged. This feature enables the implementation of libraries, allowing developers to deploy reusable code once and call it from future contracts.

The code in libraries themselves can be secure and vulnerability-free; however, when run in the context of another application new vulnerabilities can arise.

*Preventative Techniques*
Stateless libraries prevent attacks wherein attackers modify the state of the library directly in order to affect the contracts that depend on the library’s code. As a general rule of thumb, when using DELEGATECALL pay careful attention to the possible calling context of both the library contract and the calling contract, and whenever possible build stateless libraries.

5. Default visibilities: 

Functions in Solidity have visibility specifiers that dictate how they can be called. The visibility determines whether a function can be called externally by users, by other derived contracts, only internally, or only externally. Functions default to public, allowing users to call them externally.

The default visibility for functions is public, so functions that do not specify their visibility will be callable by external users. The issue arises when developers mistakenly omit visibility specifiers on functions that should be private (or only callable within the contract itself).

*Preventative Techniques*
It is good practice to always specify the visibility of all functions in a contract, even if they are intentionally public. Recent versions of solc show a warning for functions that have no explicit visibility set, to encourage this practice.

6. Entropy Illusion: 

All transactions on the Ethereum blockchain are deterministic state transition operations. This means that every transaction modifies the global state of the Ethereum ecosystem in a calculable way, with no uncertainty. This has the fundamental implication that there is no source of entropy or randomness in Ethereum.

A common pitfall is to use future block variables—that is, variables containing information about the transaction block whose values are not yet known, such as hashes, timestamps, block numbers, or gas limits. The issue with these are that they are controlled by the miner who mines the block, and as such are not truly random.

*Preventative Techniques*
The source of entropy (randomness) must be external to the blockchain. This can also be done via a centralized entity that acts as a randomness oracle. Block variables (in general, there are some exceptions) should not be used to source entropy, as they can be manipulated by miners.

7. External Contract Referencing: 

One of the benefits of the Ethereum “world computer” is the ability to reuse code and interact with contracts already deployed on the network. As a result, a large number of contracts reference external contracts, usually via external message calls. These external message calls can mask malicious actors' intentions in some nonobvious ways. 

In Solidity, any address can be cast to a contract, regardless of whether the code at the address represents the contract type being cast. This can cause problems, especially when the author of the contract is trying to hide malicious code.

*Preventative Techniques*
safe contracts can (in some cases) be deployed in such a way that they behave maliciously.
One technique is to use the *new* keyword to create contracts. 
Another solution is to hardcode external contract addresses.


8. Short Address/Parameter Attack: 

This attack is not performed on Solidity contracts themselves, but on third-party applications that may interact with them. 

When passing parameters to a smart contract, the parameters are encoded according to the ABI specification. It is possible to send encoded parameters that are shorter than the expected parameter length (for example, sending an address that is only 38 hex chars (19 bytes) instead of the standard 40 hex chars (20 bytes)). In such a scenario, the EVM will add zeros to the end of the encoded parameters to make up the expected length.
This becomes an issue when third-party applications do not validate inputs. 

*Preventative Techniques*
All input parameters in external applications should be validated before sending them to the blockchain. It should also be noted that parameter ordering plays an important role here. As padding only occurs at the end, careful ordering of parameters in the smart contract can mitigate some forms of this attack

9. Unchecked CALL Return Values: 

There are a number of ways of performing external calls in Solidity. Sending ether to external accounts is commonly performed via the transfer method. However, the send function can also be used, and for more versatile external calls the CALL opcode can be directly employed in Solidity. The call and send functions return a Boolean indicating whether the call succeeded or failed. Thus, these functions have a simple caveat, in that the transaction that executes these functions will not revert if the external call (intialized by call or send) fails; rather, the functions will simply return false. A common error is that the developer expects a revert to occur if the external call fails, and does not check the return value.

*Preventative Techniques*
Whenever possible, use the transfer function rather than send, as transfer will revert if the external transaction reverts. If send is required, always check the return value.

10. Race Conditions/Front Running: 

The combination of external calls to other contracts and the multiuser nature of the underlying blockchain gives rise to a variety of potential Solidity pitfalls whereby users race code execution to obtain unexpected states. Reentrancy (discussed earlier in this chapter) is one example of such a race condition.

As with most blockchains, Ethereum nodes pool transactions and form them into blocks. An attacker can watch the transaction pool for transactions that may contain solutions to problems, and modify or revoke the solver’s permissions or change state in a contract detrimentally to the solver. The attacker can then get the data from this transaction and create a transaction of their own with a higher gasPrice so their transaction is included in a block before the original.

*Preventative Techniques*
One method is to place an upper bound on the gasPrice. This prevents users from increasing the gasPrice and getting preferential transaction ordering beyond the upper bound. This measure only guards against the first class of attackers (arbitrary users)

A more robust method is to use a commit–reveal scheme. Such a scheme dictates that users send transactions with hidden information (typically a hash). After the transaction has been included in a block, the user sends a transaction revealing the data that was sent (the reveal phase). This method prevents both miners and users from front-running transactions, as they cannot determine the contents of the transaction. 

11. Denial of Service (DoS): 

This category is very broad, but fundamentally consists of attacks where users can render a contract inoperable for a period of time, or in some cases permanently. This can trap ether in these contracts forever,

There are various ways a contract can become inoperable. e.g.
* Looping through externally manipulated mappings or arrays
This pattern typically appears when an owner wishes to distribute tokens to investors with a distribute-like function.
* Owner operations
Another common pattern is where owners have specific privileges in contracts and must perform some task in order for the contract to proceed to the next state. One example would be an Initial Coin Offering (ICO) contract that requires the owner to finalize the contract, which then allows tokens to be transferable.
if the privileged user loses their private keys or becomes inactive, the entire token contract becomes inoperable. In this case, if the owner cannot call finalize no tokens can be transferred; the entire operation of the token ecosystem hinges on a single address.
* Progressing state based on external calls

*Preventative Techniques*
In the first example, contracts should not loop through data structures that can be artificially manipulated by external users. A withdrawal pattern is recommended, whereby each of the investors call a withdraw function to claim tokens independently.

In the second example, a privileged user was required to change the state of the contract. In such examples a failsafe can be used in the event that the owner becomes incapacitated. One solution is to make the owner a multisig contract. Another solution is to use a time-lock: in the example given the require on line 5 could include a time-based mechanism, such as require(msg.sender == owner || now > unlockTime), that allows any user to finalize after a period of time specified by unlockTime. This kind of mitigation technique can be used in the third example also. If external calls are required to progress to a new state, account for their possible failure and potentially add a time-based state progression in the event that the desired call never comes.

12. Block Timestamp manipulation: 

Block timestamps have historically been used for a variety of applications, such as entropy for random numbers, locking funds for periods of time, and various state-changing conditional statements that are time-dependent. Miners have the ability to adjust timestamps slightly, which can prove to be dangerous if block timestamps are used incorrectly in smart contracts.

block.timestamp and its alias now can be manipulated by miners if they have some incentive to do so. 

*Preventative Techniques*
Block timestamps should not be used for entropy or generating random numbers—i.e., they should not be the deciding factor (either directly or through some derivation) for winning a game or changing an important state.

## CHAPTER TEN - TOKEN

It is commonly used to refer to privately issued special-purpose coin-like items of insignificant intrinsic value, such as transportation tokens, laundry tokens, and arcade game tokens.
Token on blockchains mean blockchain-based abstractions that can be owned and that represent assets, currency, or access rights. Many blockchain tokens serve multiple purposes globally and can be traded for each other or for other currencies on global liquid markets.
A token can simultaneously convey a voting right, an access right, and ownership of a resource.


Tokens administered on blockchains are redefining the word to mean blockchain-based abstractions that can be owned and that represent assets, currency, or access rights. Tokens can be programmed to serve many different functions, often overlapping. For example, a token can simultaneously convey a voting right, an access right, and ownership of a resource. List of what tokens can serve as includes:

* Currency
* Resource
* Asset
* Access
* Equity
* Voting
* Collectible
* Identity
* Attestation
* Utility

Tokens are fungible when we can substitute any single unit of the token for another without any difference in its value or function.
Non-fungible tokens are tokens that each represent a unique tangible or intangible item and therefore are not interchangeable. Each non-fungible token is associated with a unique identifier, such as a serial number.

Counterparty risk is the risk that the other party in a transaction will fail to meet their obligations. Some types of transactions suffer additional counterparty risk because there are more than two parties involved.

Some tokens represent digital items that are intrinsic to the blockchain.Those digital assets are governed by consensus rules, just like the tokens themselves.
Conversely, many tokens are used to represent extrinsic things, such as real estate, corporate voting shares, trademarks, and gold bars. The ownership of these items, which are not "within" the blockchain, is governed by law, custom, and policy, separate from the consensus rules that govern the token.

Blockchain tokens existed before Ethereum. In some ways, the first blockchain currency, Bitcoin, is a token itself.

The first Token standard was introduced in November 2015 by Fabian Vogelsteller as an Ethereum Request for Comments (ERC). It was automatically assigned GitHub issue number 20, giving rise to the name "ERC20 token." The vast majority of tokens are currently based on the ERC20 standard. The ERC20 request for comments eventually became Ethereum Improvement Proposal 20 (EIP-20), but it is mostly still referred to by the original name, ERC20.

ERC20 is a standard for fungible tokens, meaning that different units of an ERC20 token are interchangeable and have no unique properties.

The ERC20 standard defines a common interface for contracts implementing a token, such that any compatible token can be accessed and used in the same way.

ERC20 required functions and events include:

* totalSupply
* balanceOf
* transfer
* transferFrom
* approve
* allowance
* Transfer
* Approval

ERC20 optional functions include:

* name
* symbol
* decimals

ERC721: Non-fungible Token (Deed) Standard
The ERC721 proposal is for a standard for non-fungible tokens

Extensions to Token Interface Standards inlude:

* Owner control
* Burning
* Minting
* Crowdfunding
* Caps
* Recovery backdoors
* Whitelisting
* Blacklisting


## CHAPTER ELEVEN - ORACLES

an Oracle is a system that can answer questions that are external to Ethereum. Ideally oracles are systems that are trustless, meaning that they do not need to be trusted because they operate on decentralized principles.

Oracles, in theory, provide a trustless (or near-trustless) method of bringing extrinsic (i.e., "real-world" or off-chain) information, such as football game results, gold price, or really random numbers, into the Ethereum platform for smart contracts to use. They can also be used to securely relay data to DApp frontends. Oracles can thus be viewed as a tool for bridging the gap between the off-chain and smart contract worlds.

It should be noted that some oracles supply data that is specific to a particular private data source, such as academic diplomas or government IDs.

examples of data that might be provided by oracles include:

* Random numbers/entropy from physical sources such as quantum/thermal processes: e.g., to fairly select a winner in a lottery smart contract

* Parametric triggers indexed to natural hazards: e.g., triggering of catastrophe bond smart contracts, such as Richter scale measurements for an earthquake bond

* Exchange rate data: e.g., for accurate pegging of cryptocurrencies to fiat currency

* Capital markets data: e.g., pricing baskets of tokenized assets/securities

* Benchmark reference data: e.g., incorporating interest rates into smart financial derivatives

* Static/pseudostatic data: security identifiers, country codes, currency codes, etc.

* Time and interval data: for event triggers grounded in precise time measurements

* Weather data: e.g., insurance premium calculations based on weather forecasts

* Political events: for prediction market resolution

* Sporting events: for prediction market resolution and fantasy sports contracts

* Geolocation data: e.g., as used in supply chain tracking

* Damage verification: for insurance contracts

* Events occurring on other blockchains: interoperability functions

* Ether market price: e.g., for fiat gas price oracles

* Flight statistics: e.g., as used by groups and clubs for flight ticket pooling

All oracles provide a few key functions, by definition. These include the ability to:

* Collect data from an off-chain source.

* Transfer the data on-chain with a signed message.

* Make the data available by putting it in a smart contract’s storage.

The three main ways to set up an oracle can be categorized as 
request–response
publish-subscribe
immediate-read.

oracles can also be used to perform arbitrary computation, computation oracles can be used to perform computation on a set of inputs and return a calculated result that may have been infeasible to calculate on-chain.

While centralized data or computation oracles suffice for many applications, they represent single points of failure in the Ethereum network. A number of schemes have been proposed around the idea of decentralized oracles as a means of ensuring data availability and the creation of a network of individual data providers with an on-chain data aggregation system.

ChainLink has proposed a decentralized oracle network consisting of three key smart contracts—
* A reputation contract
* An order-matching contract
* An aggregation contract—and an off-chain registry of data providers.


### CHAPTER TWELVE - DAPPS

A DApp is an application that is mostly or entirely decentralized.

Consider all the possible aspects of an application that may be decentralized:

* Backend software (application logic)
* Frontend software
* Data storage
* Message communications
* Name resolution

There are many advantages to creating a DApp that a typical centralized architecture cannot provide:

* Resiliency
* Transparency
* Censorship resistance

1. Backend (Smart Contract): 

Smart contracts are used to store the business logic (program code) and the related state of your application. Ethereum smart contracts allow you to build architectures in which a network of smart contracts call and pass data between each other, reading and writing their own state variables as they go, with their complexity restricted only by the block gas limit.

2. Frontend (Web User Interface): 

The client-side interface of a DApp can use standard web technologies (HTML, CSS, JavaScript, etc.). This allows a traditional web developer to use familiar tools, libraries, and frameworks. Interactions with Ethereum, such as signing messages, sending transactions, and managing keys, are often conducted through the web browser, via an extension such as MetaMask
The frontend is usually linked to Ethereum via the web3.js JavaScript library, which is bundled with the frontend resources and served to a browser by a web server.

3. Data Storage: 

Due to high gas costs and the currently low block gas limit, smart contracts are not well suited to storing or processing large amounts of data. Hence, most DApps utilize off-chain data storage services, meaning they store the bulky data off the Ethereum chain, on a data storage platform.
That data storage platform can be:
* Centralized (e.g cloud database)
* Decentralized(e.g IPFS)

4. IPFS: 

The Inter-Planetary File System (IPFS) is a decentralized content-addressable storage system that distributes stored objects among peers in a P2P network. "Content addressable" means that each piece of content (file) is hashed and the hash is used to identify that file. You can then retrieve any file from any IPFS node by requesting it by its hash.
Instead of storing a web application on a single server, the files are stored on IPFS and can be retrieved from any IPFS node.


5. Swarm: 

Swarm is another content-addressable P2P storage system, similar to IPFS. Swarm was created by the Ethereum Foundation, as part of the Go-Ethereum suite of tools. Like IPFS, it allows you to store files that get disseminated and replicated by Swarm nodes. You can access any Swarm file by referring to it by a hash. Swarm allows you to access a website from a decentralized P2P system, instead of a central web server.

6. Decentralized Message Communications Protocols: 

Inter-process communication means being able to exchange messages between applications, between different instances of the application, or between users of the application. Traditionally, this is achieved by reliance on a centralized server. However, there are a variety of decentralized alternatives to server-based protocols, offering messaging over a P2P network e.g Whisper.

## CHAPTER THIRTEEN - EVM

At the heart of the Ethereum protocol and operation is the Ethereum Virtual Machine(EVM). It is a computation Engine.

The EVM is the part of Ethereum that handles smart contract deployment and execution.

The EVM is a quasi–Turing-complete state machine; *quasi* because all execution processes are limited to a finite number of computational steps by the amount of gas available for any given smart contract execution. As such, the halting problem is "solved" (all program executions will halt) and the situation where execution might (accidentally or maliciously) run forever, thus bringing the Ethereum platform to halt in its entirety, is avoided.
The EVM has a stack-based architecture, storing all in-memory values on a stack. It works with a word size of 256 bits (mainly to facilitate native hashing and elliptic curve operations) and has several addressable data components:

* An immutable program code ROM, loaded with the bytecode of the smart contract to be executed.
* A volatile memory, with every location explicitly initialized to  zero.
* A permanent storage that is part of the Ethereum state, also zero-initialized.

The Ethereum world computer is single-threaded, it does not have any "system interface" handling or “hardware support”—there is no physical machine to interface with. The Ethereum world computer is completely virtual.
The EVM instruction set offers most of the operations you might expect, including:

* Arithmetic and bitwise logic operations
* Execution context inquiries
* Stack, memory, and storage access
* Control flow operations
* Logging, calling, and other operator

The available EVM opcodes can be divided into different categories namely:

* Arithmetic operations
* Stack operations
* Process flow operations
* System operations
* Logic operations
* Environmental operations
* Block operations

The EVM's job is to keep the Ethereum state up to date by computing valid state transitions as a result of smart contract code execution as stipulated by the Ethereum protocol. This characteristic leads to Ethereum being described as a transaction-based state machine, which reflects the reality that external players (such as account holders and miners) start state transitions by issuing, accepting, and ordering transactions. It is useful to consider what comprises the Ethereum state at this time.

The world state is a mapping of Ethereum addresses (160-bit values) to accounts.
The EVM a quasi–Turing-complete machine: it can run any program you feed into it, but only if the program terminates within a particular amount of computation.

Gas is Ethereum’s unit for measuring the computational and storage resources required to perform actions on the Ethereum blockchain. Each operation performed by a transaction or contract costs a fixed amount of gas. Some examples, from the Ethereum Yellow Paper:

* Adding two numbers costs 3 gas
* Calculating a Keccak-256 hash costs 30 gas + 6 gas for each 256 bits of data being hashed
* Sending a transaction costs 21,000 gas

The block gas limit is the maximum amount of gas that may be consumed by all the transactions in a block, and constrains how many transactions can fit into a block. The miners on the network collectively decide the block gas limit.

[Read more](https://github.com/ethereumbook/ethereumbook/blob/develop/13evm.asciidoc)

## CHAPTER FOURTEEN - CONSENSUS

Consensus Rules— the rules that everyone must agree to for the system to operate in a decentralized, yet deterministic, manner.
Reaching Consensus is when different participants in a distributed system all (eventually) agree on a single system-wide state.
Consensus algorithms are the mechanism used to reconcile security and decentralization.
Consensus is about being able to arrive at a common state, while maintaining decentralization. In other words, consensus is intended to produce a system of strict rules without rulers. There is no one person, organization, or group "in charge”; rather, power and control are diffused across a broad network of participants, whose self-interest is served by following the rules and behaving honestly.

Bitcoin, the original blockchain, established a consensus technique known as proof of work (PoW). The colloquial term for PoW is "mining.
The real purpose of mining (and all other consensus models) is to secure the blockchain, while keeping control over the system decentralized and diffused across as many participants as possible.
PoW consensus is a careful balance of risk and reward that drives participants to behave honestly out of self-interest.
Ethash is the Ethereum PoW algorithm, it is a combination of Vitalik Buterin’s Dagger algorithm and Thaddeus Dryja’s Hashimoto algorithm

proof of stake (PoS) is a variations of consensus algorithms based on financial stake.
Casper is proposed name for Ethereum’s PoS consensus algorithm.

The principles and assumptions of consensus algorithms can be more clearly understood by asking a few key questions:

* Who can change the past, and how? (This is also known as immutability.)
* Who can change the future, and how? (This is also known as finality.)
* What is the cost to make such changes?
* How decentralized is the power to make such changes?
* Who will know if something has changed, and how will they know?






# SECUREUM 201

## Zero Address Check: 
address 0 does noy have a private key. it's used for contract creation and for burning tokens. Tokens that are meant to be burnt or locked forevere are sent to the address 0. It's paramount to always check for address 0 whenver a user is inputing an address either for paymenet or for other activities in a contract.


## 2. OpenZeppelin PaymentSplitter
It allows to split Ether payments among a group of accounts. The sender does not need to be aware that the Ether will be split in this way, since it is handled transparently by the contract. The way this is specified is by assigning each account to a number of shares. Of all the Ether that this contract receives, each account will then be able to claim an amount proportional to the percentage of total shares they were assigned. The account are not permitted to take more than their fair part.

During initialization, an account is added, together with the percentage share they receive. An account can withdraw funds by specifying their address as a parameter in the receive function. account can be discovered with payee(index), and shares with shares(account). 

PaymentSplitter follows a pull payment model. This means that payments are not automatically forwarded to the accounts but kept in this contract, and the actual transfer is triggered as a separate step by calling the release function.

## 3. OpenZeppelin ERC165: 
ERC165 is a standard that helps do runtime interface detection using a lookup table. You can register interfaces using _registerInterface(bytes4) and supportsInterface(bytes4 interfaceId) returns a bool indicating if that interface is supported or not.
It helps to prevent lost of funds. it checks if the receiver can recieve the token that is been transfered to it. if the receiver implement the erc165 supportInterface, the token is sent successfully else it revert.


## 4. OpenZeppelin ReentrancyGuard
OpenZeppelin ReentrancyGuard can be used to prevent reentrancy attack. It is used like a modifier on a function to prevenr reentrant call to that function


## 5. Overflow/Underflow Check
it is paramount to check if an arithmetic operation will lead to overflow or underflow. Overflow or Underflow can leads to loss of funds, overpayment or underpayment e.t.c OpenZeppelin’s SafeMath library for arithmetic is best used for arithmetic operation.
