This is the review of Mastering Ethereum.

# Mastering Ethereum

## CHAPTER ONE - What is Ethereum

Ethereum is often described as the world computer. Ethereum is an open source, globally decentralized computing infrastructure that executes programs called smart contracts.

Ethereum shares many common elements with other open blockchains: a peer-to-peer network connecting participants, a Byzantine fault–tolerant consensus algorithm for synchronization of state updates (a proof-of-work blockchain), the use of cryptographic primitives such as digital signatures and hashes, and a digital currency (ether). The primary purpose of Ethereun is not to be a digital currency payment network. Ether is intended as a utility to pay for the use of Ethereum blockchain as the world computer.

Ethereum’s language is Turing complete, meaning that Ethereum can straightforwardly function as a general-purpose computer.

Ethereum’s four stages of development includes: Frontier, Homestead, Metropolis, and Serenity

## CHAPTER TWO - Ethereum Basics

The smallest unit of ether is wei (1*10^18). A wallet to mean a software application that helps you manage your Ethereum account, is your gateway to the Ethereum system. For a wallet application to work, it must have access to your private keys. Examples of wallet includes: Metamask, Jaxx, MyEtherWallet (MEW), Emerald Wallet. As a fundamental principle, however, it is as easy as one private key equals one "account."

With control comes a big responsibility. If you lose your private keys, you lose access to your funds and contracts. No one can help you regain access—your funds will be locked forever. Ether is meant to be used to pay for running smart contracts, which are computer programs that run on an emulated computer called the Ethereum Virtual Machine (EVM).

The type of account you created in the MetaMask wallet is called an externally owned account (EOA), those that have a private key.

That other type of account is a contract account, it has smart contract code, which a simple EOA can’t have. A contract account does not have a private key.

## CHAPTER THREE - Ethereum Clients
An Ethereum client is a software application that implements the Ethereum specification and communicates over the peer-to-peer network with other Ethereum clients. Different Ethereum clients interoperate if they comply with the reference specification and the standardized communications protocols. All ethereum clients can be used to operate and interact with the same Ethereum network. There are six main implementations of the Ethereum protocol, written in six different languages:

Parity, written in Rust
Geth, written in Go
cpp-ethereum, written in C++
pyethereum, written in Python
Mantis, written in Scala
Harmony, written in Java
The two most common client include Parity and Geth. Running a full node will incur a cost in hardware resources and bandwidth. A full node may download up to 300 GB of data (as of March 2021, depending on the client configuration) and store it on a local hard drive. The terms remote client and wallet are used interchangeably, though there are some differences.

Minimum requirements to run a client:

CPU with 2+ cores

At least 300 GB free storage space

4 GB RAM minimum with an SSD, 8 GB+ if you have an HDD

8 MBit/sec download internet service Recommended specifications to run a client:

Fast CPU with 4+ cores

16 GB+ RAM

Fast SSD with at least 500 GB free space

25+ MBit/sec download internet service

## CHAPTER FOUR - Cryptography
Cryptography means secret writing in Greek, but the study of cryptography encompasses more than just secret writing, which is referred to as encryption. Some of the cryptography used in Ethereum includes public key cryptography (PKC), which is used to control ownership of funds, in the form of private keys and addresses.

Ownership of ether by EOAs is established through digital private keys, Ethereum addresses, and digital signatures. The private keys are at the heart of all user interaction with Ethereum. In fact, account addresses are derived directly from private keys: a private key uniquely determines a single Ethereum address, also known as an account.

Access and control of funds is achieved with digital signatures, which are created using the private key. Ethereum transactions require a valid digital signature to be included in the blockchain.

Public key cryptography (also called asymmetric cryptography); uses unique keys to secure information. These keys are based on mathematical functions that have a special property: it is easy to calculate them, but hard to calculate their inverse. In Ethereum, we use public key cryptography to create the public–private key pair we have been talking about in this chapter. They are considered a pair because the public key is derived from the private key. A digital signature can be created to sign any message.

The private key is used to create signatures required to spend ether by proving ownership of funds used in a transaction. The private key must remain secret at all times, because revealing it to third parties is equivalent to giving them control over the ether and contracts secured by that private key.

The first and most important step in generating keys is to find a secure source of entropy, or randomness by picking a number between 1 and 2^256.

An Ethereum public key is a point on an elliptic curve, it is two numbers, joined together, which are produced from the private key by a calculation that can only go one way. Elliptic curve cryptography is a type of asymmetric or public key cryptography based on the discrete logarithm problem as expressed by addition and multiplication on the points of an elliptic curve.

A hash function is any function that can be used to map data of arbitrary size to data of fixed size. A cryptographic hash function is a one-way hash function that maps data of arbitrary size to a fixed-size string of bits. The one-way nature means that it is computationally infeasible to recreate the input data if one only knows the output hash.

The main properties of cryptographic hash functions include:

Determinism
Verifiability
Noncorrelation
Irreversibility
Collision protection

## CHAPTER FIVE - Wallets
The wallet controls access to a user’s money, managing keys and addresses, tracking the balance, and creating and signing transactions. In addition, some Ethereum wallets can also interact with contracts, such as ERC20 tokens. The word wallet refers to the system used to store and manage a user’s keys. There are two primary types of wallets, distinguished by whether the keys they contain are related to each other or not. The first type is a nondeterministic wallet, where each key is independently generated from a different random number. The second type of wallet is a deterministic wallet, where all the keys are derived from a single master key, known as the seed. Mnemonic Code Words (BIP-39) are word sequences that encode a random number used as a seed to derive a deterministic wallet.

There are two primary types of wallets, distinguished by whether the keys they contain are related to each other or not.

The first type is a nondeterministic wallet, where each key is independently generated from a different random number. The keys are not related to each other. This type of wallet is also known as a JBOK wallet, from the phrase "Just a Bunch of Keys.”

The second type of wallet is a deterministic wallet, where all the keys are derived from a single master key, known as the seed. All the keys in this type of wallet are related to each other and can be generated again if one has the original seed. There are a number of different key derivation methods used in deterministic wallets. The most commonly used derivation method uses a tree-like structure, as described in Hierarchical Deterministic Wallets (BIP-32/BIP-44).

To make deterministic wallets slightly more secure against data-loss accidents, such as having your phone stolen or dropping it in the toilet, the seeds are often encoded as a list of words (in English or another language) for you to write down and use in the event of an accident. These are known as the wallet’s mnemonic code words. Of course, if someone gets hold of your mnemonic code words, then they can also recreate your wallet and thus gain access to your ether and smart contracts. As such, be very, very careful with your recovery word list! Never store it electronically, in a file, on your computer or phone. Write it down on paper and store it in a safe and secure place.

The next few sections introduce each of these technologies at a high level.

## CHAPTER SIX - Transactions
Transactions are signed messages originated by an externally owned account (EOA), transmitted by the Ethereum network, and recorded on the Ethereum blockchain. A transaction is a serialized binary message that contains the following data:

Nonce
Gas price
Gas limit
Recipient
Value
Data
v,r,s
Concurrency is when you have simultaneous computation by multiple independent systems.

Gas is the fuel of Ethereum. Gas is not ether—it’s a separate virtual currency with its own exchange rate against ether. Ethereum uses gas to control the amount of resources that a transaction can use. Ethereum platform requires some form of metering in order to avoid denial-of-service attacks or inadvertently resource-devouring transactions.

GasLimit gives the maximum number of units of gas the transaction originator is willing to buy in order to complete the transaction.

The main payload of a transaction is contained in two fields: value and data. Transactions can have both value and data, only value, only data, or neither value nor data. All four combinations are valid.

A transaction with only value is a payment. A transaction with only data is an invocation. A transaction with both value and data is both a payment and an invocation. A transaction with neither value nor data—well that’s probably just a waste of gas!

The data payload sent to an ABI-compatible contract (which you can assume all contracts are) is a hex-serialized encoding of:

Function selector: the first 4 bytes of the Keccak-256 hash of the function’s prototype. This allows the contract to unambiguously identify which function you wish to invoke.

Function arguments: encoded according to the rules for the various elementary types defined in the ABI specification.

A digital signature is a mathematical scheme that consists of two parts. The first part is an algorithm for creating a signature, using a private key (the signing key), from a message (which in our case is the transaction). The second part is an algorithm that allows anyone to verify the signature by only using the message and a public key.

## CHAPTER SEVEN - Smart Contracts and Solidity
Smart contract is a set of promises, specified in digital form, including protocols within which the parties perform on the other promises. Smart contracts are immutable computer programs that run deterministically in the context of an Ethereum Virtual Machine. Smart contracts are typically written in a high-level language, such as Solidity. But in order to run, they must be compiled to the low-level bytecode that runs in the EVM. Once compiled, they are deployed on the Ethereum platform using a special contract creation transaction, which is identified as such by being sent to the special contract creation address, namely 0x0. Contracts only run if they are called by a transaction. Transactions are atomic, they are either successfully terminated or reverted.

Some of the basic data types in Solidity:

Boolean (bool)
Integer (int, uint)
Fixed point (fixed, ufixed)
Address
Byte array (fixed)
Byte array (dynamic)
Enum
Arrays
Struct
Mapping
Predefined Global Variables and Functions

msg.sender
msg.value
msg.gas
msg.data
msg.sig
The tx object provides a means of accessing transaction-related information:

tx.gasprice
tx.origin
The block object contains information about the current block: block.blockhash(blockNumber)

block.coinbase
block.difficulty
block.gaslimit
block.number
block.timestamp
Any address, either passed as an input or cast from a contract object, has a number of attributes and methods:

address.balance
address.transfer(amount)
address.send(amount)
address.call(payload)
address.delegatecall(payload)
Function’s visibility includes; public, private, internal, external. While function’s behaviour includes; pure, constant, view, payable

## CHAPTER EIGHT - Smart Contracts and Vyper

Vyper is an experimental, contract-oriented programming language for the Ethereum Virtual Machine that strives to provide superior auditability, by making it easier for developers to produce intelligible code. The three basic categories of trace vulnerabilities in vyper includes: Suicidal contracts, Greedy contracts and Prodigal contracts. One of the ways in which Vyper tries to make unsafe code harder to write is by deliberately omitting some of Solidity’s features. Inheritance allows programmers to harness the power of prewritten code by acquiring preexisting functionality, properties, and behaviors from existing software libraries. Inheritance is powerful and promotes the reuse of code. Vyper doesn’t support class inheritance. Inline assembly gives developers low-level access to the Ethereum Virtual Machine, allowing Solidity programs to perform operations by directly accessing EVM instructions. Function overloading allows developers to write multiple functions of the same name.

## CHAPTER NINE - smart contracts Security

All smart contracts are public, and any user can interact with them simply by creating a transaction. Any vulnerability can be exploited, and losses are almost always impossible to recover. Some of smart contract security best practice include:

Minimalism/simplicity
Code reuse
Code quality
Readability/auditability
Test coverage
Some of the smart contract security risks and antipatterns includes:

Reentrancy: smart contract’s ability to call and utilize code from other external contracts. This type of attack can occur when a contract sends ether to an unknown address. An attacker can carefully construct a contract at an external address that contains malicious code in the fallback function. When a contract sends ether to this address, it will invoke the malicious code.
Arithmetic Over/Underflows: The Ethereum Virtual Machine specifies fixed-size data types for integers. This means that an integer variable can represent only a certain range of numbers. An over/underflow occurs when an operation is performed that requires a fixed-size variable to store a number (or piece of data) that is outside the range of the variable’s data type.
Unexpected Ether: Typically, when ether is sent to a contract it must execute either the fallback function or another function defined in the contract. There are two exceptions to this, where ether can exist in a contract without having executed any code. Contracts that rely on code execution for all ether sent to them can be vulnerable to attacks where ether is forcibly sent. A common defensive programming technique that is useful in enforcing correct state transitions or validating operations is invariant checking. There are two ways in which ether can (forcibly) be sent to a contract without using a payable function or executing any code on the contract: Self-destruct/suicide and Pre-sent ether.
Delegate call: The CALL and DELEGATECALL opcodes are useful in allowing Ethereum developers to modularize their code. Standard external message calls to contracts are handled by the CALL opcode, whereby code is run in the context of the external contract/function. The DELEGATECALL opcode is almost identical, except that the code executed at the targeted address is run in the context of the calling contract, and msg.sender and msg.value remain unchanged.
Default visibilities: Functions in Solidity have visibility specifiers that dictate how they can be called. The visibility determines whether a function can be called externally by users, by other derived contracts, only internally, or only externally. The default visibility for functions is public, so functions that do not specify their visibility will be callable by external users.
Entropy Illusion: All transactions on the Ethereum blockchain are deterministic state transition operations. This means that every transaction modifies the global state of the Ethereum ecosystem in a calculable way, with no uncertainty.
External Contract Referencing: One of the benefits of the Ethereum “world computer” is the ability to reuse code and interact with contracts already deployed on the network. As a result, a large number of contracts reference external contracts, usually via external message calls. In Solidity, any address can be cast to a contract, regardless of whether the code at the address represents the contract type being cast.
Short Address/Parameter Attack: This attack is not performed on Solidity contracts themselves, but on third-party applications that may interact with them. This section is added for completeness and to give the reader an awareness of how parameters can be manipulated in contracts. When passing parameters to a smart contract, the parameters are encoded according to the ABI specification.
Unchecked CALL Return Values: There are a number of ways of performing external calls in Solidity. Sending ether to external accounts is commonly performed via the transfer method. However, the send function can also be used, and for more versatile external calls the CALL opcode can be directly employed in Solidity.
Race Conditions/Front Running: The combination of external calls to other contracts and the multiuser nature of the underlying blockchain gives rise to a variety of potential Solidity pitfalls whereby users race code execution to obtain unexpected states. Reentrancy (discussed earlier in this chapter) is one example of such a race condition.
Denial of Service (DoS): This category is very broad, but fundamentally consists of attacks where users can render a contract inoperable for a period of time, or in some cases permanently. Different ways a contract can become inoperable includes: Looping through externally manipulated mappings or arrays, Owner operations, Progressing state based on external calls.
Block Timestamp manipulation: Block timestamps have historically been used for a variety of applications, such as entropy for random numbers, locking funds for periods of time, and various state-changing conditional statements that are time-dependent. Miners have the ability to adjust timestamps slightly, which can prove to be dangerous if block timestamps are used incorrectly in smart contracts.

## CHAPTER TEN - Token
Tokens administered on blockchains are redefining the word to mean blockchain-based abstractions that can be owned and that represent assets, currency, or access rights. Tokens can be programmed to serve many different functions, often overlapping. For example, a token can simultaneously convey a voting right, an access right, and ownership of a resource. As the following list shows, currency is just the first app:

Currency
Resource
Asset
Access
Equity
Voting
Collectible
Identity
Attestation
Utility
Tokens are fungible when we can substitute any single unit of the token for another without any difference in its value or function. Non-fungible tokens are tokens that each represent a unique tangible or intangible item and therefore are not interchangeable. Counterparty risk is the risk that the other party in a transaction will fail to meet their obligations. Some tokens represent digital items that are intrinsic to the blockchain. The first standard; ERC20 Token Standard, was introduced in November 2015 by Fabian Vogelsteller as an Ethereum Request for Comments (ERC). It was automatically assigned GitHub issue number 20, giving rise to the name "ERC20 token." The vast majority of tokens are currently based on the ERC20 standard. The ERC20 request for comments eventually became Ethereum Improvement Proposal 20 (EIP-20), but it is mostly still referred to by the original name, ERC20. ERC20 is a standard for fungible tokens, meaning that different units of an ERC20 token are interchangeable and have no unique properties. An ERC20-compliant token contract must provide at least the following functions and events:

totalSupply

balanceOf

transfer

transferFrom

approve

allowance

Transfer

Approval Optional functions include:

name

symbol

decimals

## CHAPTER ELEVEN - Oracles

Oracles are systems that can provide external data sources to Ethereum smart contracts. Oracles are systems that are trustless, meaning that they do not need to be trusted because they operate on decentralized principles. Oracles provide a trustless (or at least near-trustless) way of getting extrinsic (i.e., real-world or off-chain) information, such as the results of football games, the price of gold, or truly random numbers, onto the Ethereum platform for smart contracts to use. They can also be used to relay data securely to DApp frontends directly. Oracles can therefore be thought of as a mechanism for bridging the gap between the off-chain world and smart contracts.

All oracles provide a few key functions, by definition. These include the ability to:

Collect data from an off-chain source.
Transfer the data on-chain with a signed message.
Make the data available by putting it in a smart contract’s storage.
While centralized data or computation oracles suffice for many applications, they represent single points of failure in the Ethereum network. A number of schemes have been proposed around the idea of decentralized oracles as a means of ensuring data availability and the creation of a network of individual data providers with an on-chain data aggregation system. ChainLink as proposed a decentralized oracle network consisting of three key smart contracts—a reputation contract, an order-matching contract, and an aggregation contract—and an off-chain registry of data providers.

## CHAPTER TWELVE - Dapps

Web3 DApps are about decentralizing all other aspects of an application: storage, messaging, naming, etc. A DApp is an application that is mostly or entirely decentralized. There are many advantages to creating a DApp that a typical centralized architecture cannot provide:

Resiliency
Transparency
Censorship resistance
Backend (Smart Contract): are used to store the business logic (program code) and the related state of your application. Ethereum smart contracts allow you to build architectures in which a network of smart contracts call and pass data between each other, reading and writing their own state variables as they go, with their complexity restricted only by the block gas limit.

Frontend (Web User Interface): the client-side interface of a DApp can use standard web technologies (HTML, CSS, JavaScript, etc.). This allows a traditional web developer to use familiar tools, libraries, and frameworks. Interactions with Ethereum, such as signing messages, sending transactions, and managing keys, are often conducted through the web browser, via an extension such as MetaMask.

Data Storage: Due to high gas costs and the currently low block gas limit, smart contracts are not well suited to storing or processing large amounts of data. Hence, most DApps utilize off-chain data storage services, meaning they store the bulky data off the Ethereum chain, on a data storage platform.

IPFS: The Inter-Planetary File System (IPFS) is a decentralized content-addressable storage system that distributes stored objects among peers in a P2P network. "Content addressable" means that each piece of content (file) is hashed and the hash is used to identify that file. You can then retrieve any file from any IPFS node by requesting it by its hash.

Swarm is another content-addressable P2P storage system, similar to IPFS. Swarm was created by the Ethereum Foundation, as part of the Go-Ethereum suite of tools. Like IPFS, it allows you to store files that get disseminated and replicated by Swarm nodes. You can access any Swarm file by referring to it by a hash. Swarm allows you to access a website from a decentralized P2P system, instead of a central web server.

Decentralized Message Communications Protocols: Another major component of any application is inter-process communication. That means being able to exchange messages between applications, between different instances of the application, or between users of the application. Traditionally, this is achieved by reliance on a centralized server. However, there are a variety of decentralized alternatives to server-based protocols, offering messaging over a P2P network.

## CHAPTER THIRTEEN - EVM

The EVM is a quasi–Turing-complete state machine; quasi because all execution processes are limited to a finite number of computational steps by the amount of gas available for any given smart contract execution. As such, the halting problem is "solved" (all program executions will halt) and the situation where execution might (accidentally or maliciously) run forever, thus bringing the Ethereum platform to halt in its entirety, is avoided. The EVM has a stack-based architecture, storing all in-memory values on a stack. It works with a word size of 256 bits (mainly to facilitate native hashing and elliptic curve operations) and has several addressable data components:

An immutable program code ROM, loaded with the bytecode of the smart contract to be executed.
A volatile memory, with every location explicitly initialized to zero.
A permanent storage that is part of the Ethereum state, also zero-initialized.
The EVM operates in a much more limited domain: it is just a computation engine, and as such provides an abstraction of just computation and storage, similar to the Java Virtual Machine (JVM) specification, for example. The EVM instruction set offers most of the operations you might expect, including:

Arithmetic and bitwise logic operations
Execution context inquiries
Stack, memory, and storage access
Control flow operations
Logging, calling, and other operator
The job of the EVM is to update the Ethereum state by computing valid state transitions as a result of smart contract code execution, as defined by the Ethereum protocol. This aspect leads to the description of Ethereum as a transaction-based state machine, which reflects the fact that external actors (i.e., account holders and miners) initiate state transitions by creating, accepting, and ordering transactions. It is useful at this point to consider what constitutes the Ethereum state.

## CHAPTER FOURTEEN - CONSENSUS
Consensus algorithms are the mechanism used to reconcile security and decentralization. In blockchains, consensus is a critical property of the system. Simply put, there is money at stake. The creator of the original blockchain, Bitcoin, invented a consensus algorithm called proof of work (PoW). Arguably, PoW is the most important invention underpinning Bitcoin. The colloquial term for PoW is "mining," which creates a misunderstanding about the primary purpose of consensus. Ethereum is currently a PoW blockchain, in that it uses a PoW algorithm with the same basic incentive system for the same basic goal: securing the blockchain while decentralizing control. Ethereum’s PoW algorithm is slightly different than Bitcoin’s and is called Ethash. Historically, proof of work was not the first consensus algorithm proposed. Preceding the introduction of proof of work, many researchers had proposed variations of consensus algorithms based on financial stake, now called proof of stake (PoS).
