## Chapter 1: What Is Ethereum

Similar to Bitcoin, Ethereum is an open-source, public blockchain network. But the network does so by introducing a few important technologies, most notably smart contracts and a turing-complete virtual machine.

When used in conjunction, Ethereum develops into a potent platform for creating decentralised, permissionless financial contracts and other applications.

The platform enables people from all over the world to communicate with one another via a native coding language called Solidity and is intended to be straightforward, ubiquitous, and flexible.

## Chapter 2: Ethereum Basics

Ethereum wallet is a software application that helps you manage your Ethereum account. It holds your keys and can create and broadcast transactions on your behalf. Choosing an Ethereum wallet can be difficult because there are many different options. The "best" wallets are often the ones that adapt to the platform upgrades. In short, an Ethereum wallet is your gateway to the Ethereum system. 

While Bitcoin proved the first use-case for cryptographic currencies, Ethereum aimed at expanding on the functions a decentralized public blockchain could accomplish. In particular, the Ethereum whitepaper notes that Bitcoin lacks:

Turing-completeness– The inability to incorporate looping (among other features)


Value-Identification– The inability to incorporate oracles

State — The lack of multi-stage contracts or scripts which keep information beyond simply “spent” or “unspent”

Time-Awareness — The inability to include nonce, timestamps and previous block hashes

Ethereum solved these problems through the introduction of the Ethereum Virtual Machine (EVM), a sandboxed virtual stack responsible for executing contract bytecode. Contracts are typically written in higher level languages, like Solidity, then compiled to EVM bytecode. The integration of the EVM allows for smart contract logic to be compiled along with the inclusion of a nonce, timestamps and previous block hashes.

### Wallets

1.MetaMask


A browser extension wallet called MetaMask operates in your browser (Chrome, Firefox, Opera, or Brave Browser). Given that it can connect to numerous Ethereum nodes and test blockchains, it is simple to use and practical for testing. A web-based wallet called MetaMask also has mobile apps for iOS and Android.

2.Jaxx

Jaxx is a multiplatform and multicurrency wallet that works with many different operating systems, including Android, iOS, Windows, macOS, and Linux. Due to its simplicity and ease of use, it is frequently an excellent option for beginners. Depending on where you install it, Jaxx can be either a desktop or a mobile wallet.

3.MyEtherWallet (MEW)

The main function of MyEtherWallet is to function as a web-based wallet in any browser. Additionally, iOS and Android are supported. We will look at several of its complex features in the examples we use.

## Chapter 3: Ethereum Clients

* An Ethereum client is a software application that implements the Ethereum specification and communicates over the peer-to-peer network with other Ethereum clients.

* Different Ethereum clients interoperate if they comply with the reference specification and the standardized communications protocols.

* As such, they can all be used to operate and interact with the same Ethereum network.

* Ethereum is an open source project, and the source code for all the major clients is available under open source licenses (e.g., LGPL v3.0), free to download and use for any purpose.

#### Currently, there are six main implementations of the Ethereum protocol, written in six different languages:

* Parity, written in Rust

* Geth, written in Go

* cpp-ethereum, written in C++

* pyethereum, written in Python

* Mantis, written in Scala

* Harmony, written in Java



## Chapter 4: Cryptography

## Chapter 5: Wallets

## Chapter 6: Transactions

In Ethereum, the state may be changed by transactions, and the state keeps account of interactions. This makes Ethereum a transaction-based state machine. Here, we take a high-level look at a transaction's components and explain how the majority of the hex numbers that are nonsense are generated.

An Ethereum account is associated with each address and each have the following attributes.

`nonce` the count of the number of outgoing transactions, starting with 0

`balance` the amount of ether in the account

`storageRoot` the hash associated with the storage of the account

`codeHash` the hash of the code governing the account, if this is empty then the account is a normal account that can be accessed with its private key else

`gasPrice` the price to determine the amount of ether the transaction will cost

`gasLimit` the maximum gas that is allowed to be spent to process the transaction

`to` the account the transaction is sent to, if empty, the transaction will create a contract

`value` the amount of ether to send

`data` could be an arbitrary message or function call to a contract or code to create a contract


## Chapter 7: Smart Contracts and Solidity

In the 1990s, cryptographer Nick Szabo coined the term "smart contracts". In the context of Ethereum, the term is actually a bit of a misnomer. Smart contracts are neither smart nor legal contracts, but the term has stuck in the Etheritec community. Ethereum Virtual Machine as part of the Ethereum network protocol—i.e., on the decentralized Ethereum world computer.


### Solidity
A procedural (imperative) programing language with a syntax almost like JavaScript, C++, or Java. The foremost popular and regularly used language for Ethereum smart contracts.

### Vyper
A more recently developed language, almost like Serpent and again with Python-like syntax. Intended to urge closer to a pure-functional Python-like language than Serpent, but to not replace Serpent.

### Bamboo
An afresh developed language, influenced by Erlang, with explicit state transitions and without iterative flows (loops). Intended to scale back side effects and increase audibility. Very new and yet to be widely adopted.


### Serpent
A procedural (imperative) programing language with a syntax almost like Python. Also can be wont to write functional (declarative) code, though it’s not entirely freed from side effects.

## Chapter 8: Smart Contracts and Vyper

The Ethereum Virtual Machine is the objective of the contract-oriented, pythonic programming language called Vyper (EVM).
It was created with the express purpose of resolving Solidity's security vulnerabilities. You might have gathered from the definition that python has a big effect on it. Contrary to Solidity, Vyper has done away with some Object-Oriented principles including Inheritance, often known as contract-oriented or transactional programming. Making contracts more safe, auditable, and less prone to mistakes was the major goal. Due to the fact that it is tightly typed, you cannot utilise one data type as another. In dealing with multiple data kinds, this makes sure that nothing goes wrong.


## Chapter 9: Smart Contract Security



In the Smart Contract Weakness (SWC) registry, they are categorised. The most critical flaw in smart contracts is the SWC registry. The registry provides as the basis for the uniform identification of smart contract vulnerabilities.

### List of known Smart Contract Vulnerabilities

* Integer overflow and underflow (solved since solidity 0.8)

* Unchecked call return values

* Re-entrancy attacks

* Denial Of Service attacks

* Front Running attacks

* Replay signatures attacks

* Function default visibility

* Floating pragma

* Loop through long arrays

* Wrong inheritance

* Unexpected ether balance

* Access outside array limits

* Delegate calls to untrusted sources

* (Regular) calls to untrusted sources

* Insecure randomness

* Block Timestamp manipulation

* Contracts with zero code

* Uninitialized Storage Pointers

* Unupgradable smart contracts


## Chapter 10: Tokens

### ERC20

ERC-20 is the technical standard for fungible tokens created using the Ethereum blockchain. A fungible token is one that can be exchanged for another token, as opposed to the well-known non-fungible tokens (NFTs), which cannot be done.

Different coins with smart-contract capabilities can be exchanged thanks to ERC-20. In this sense, a token is a representation of a coin, right, ownership, access, asset, or anything else that is transferable but not unique in and of itself. The standard permits tokens that represent one of these elements to be swapped for tokens that represent another element, together with smart contracts. Smart contracts are coding conditions that carry out various components of a transaction between parties.

A token's implementation of ERC-20 is required to support a number of its functions and events.

* TotalSupply: The overall quantity of tokens that will ever be issued

* BalanceOf: The financial standing of a token owner's account.

* Transfer: For transactions utilising the token, automatically carries out transfers of a predetermined number of tokens to a predetermined address.

* TransferFrom: Utilizing the token, automatically carries out transfers of a predetermined number of tokens from a predetermined address.

* Approve: Permits a spender to withdraw a certain number of tokens from a given account, up to a specific sum.

* Allowance: Gives the owner a predetermined number of tokens that were given by a spender.

An occasion that occurs after a successful transfer (an event)
Log of an event that has been authorised (an event)
Functions and events in this code

### ERC721

Since the interface was initially published as an EIP in September 2017, ERC721 tokens, also known as Non-Fungible Tokens (NFTs), have dominated the thoughts of developers. Developers can tokenize ownership of any type of data using non-fungible tokens, greatly expanding the range of possible token designs that can be used on the Ethereum network.

Non-Fungible tokens are distinguished primarily by the fact that each one is linked to a different identity, making each token distinctive to its owner. The ERC20 token standard, which is a token standard for fungible (each token is interchangeable) tokens, is not used by tokens in this way.

### ERC777

In addition to removing uncertainty surrounding decimals, minting, and burning, it simplifies complex token trade exchanges. It makes use of a hook, a singularly potent element.
A hook mechanism that simplifies communication between accounts and contracts upon token delivery is activated when tokens are delivered to a computer-based analytical contract. ERC-777 tokens are also far less likely to become trapped in a contract, which is a drawback of ERC-20 tokens.

These are some advantages of this standard:
Similar to Ether, it works by sending tokens using the send function (dest, value, data).
One token
When tokens are received, received code is activated according to the specifications of a contract or regular addresses, however this is not the case with ERC20 tokens. It does, for instance, transfer from one smart contract to another, but only the owner of the ERC20 tokens—that is, the ERC20's issuer—is changed within the smart contract. Using ERC-777, this repeated call is avoided.
A basic kind of introspection is made possible by the ERC-777's use of the new ERC-820 standard, which permits the registration of meta-data for contracts.

This makes it possible to expand functionality while yet maintaining backward compatibility. The ERC-777 protocol's contracts interact in a manner similar to that of the ERC-20 protocol.
With the addition of a new transfer function, which has a field called bytes where you may add any identification information to the transfer, the recipient contract is immediately informed that the transfer has occurred.
With the help of ERC-777, anyone may provide tokens additional functionality, such as a mixer contract for increased transaction privacy or an emergency recovery tool to assist you if you misplace your private keys.
Even though the early security issues of ERC-777 have been fixed, it can still have some limitations like any other token.
This is the rationale behind the release of newer versions like ERC-820.
Tokens can be transmitted to any Ethereum address, effectively meaning that they can be sent to contracts that do not support them, locking them for all time.

Even if the tokens can be physically moved, it seems to be challenging to identify who sent the tokens back and from where, which appears to be a concern.

## Chapter 11: Oracles

## Chapter 12: Decentralized Applications (DApps)

One of the most exciting terms now used in the blockchain industry is "DApps" (decentralised applications). Decentralized apps and app are combined to form the term DApp. DApps are essentially tools, applications, or programmes that run on the decentralised Ethereum Blockchain.
The front end and the back end are two crucial components of standard web programmes that make the system functional. Through the HTTP protocol, coded messages are used by these components to communicate with one another.

### Decentralized Consensus
Before the invention of Bitcoin, some form of centralization was always required for a transaction to be valid. The payment was made by pushing the transaction via a clearinghouse that kept track of it. Peer-to-peer (P2P) applications operate on the premise that nodes can communicate with one another directly. A DApp's consensus mechanism is used to handle transactions. The transaction proceeds and is processed once the majority of nodes have approved it. Additionally, the network's validators are encouraged by giving them rewards in the form of cryptographic tokens.

### Resiliency

* A DApp backend will be entirely distributed and regulated on a blockchain platform since the business logic is managed by a smart contract.

* A DApp won't experience downtime, unlike an application installed on a centralised server, and will remain accessible as long as the platform is still up and running.

### Transparency

* Everyone can analyse the code and be more certain about its functionality thanks to a DApp's on-chain nature. Any communication with the DApp will be permanently recorded in the blockchain.

### Backend

Using Ethereum smart contracts, you may create designs in which a network of smart contracts communicate with one another, reading and writing to their own state variables as they go. The intricacy of these structures is only constrained by the block gas limit. Your business logic may eventually be utilised by several other developers once you have deployed your smart contract.

### Data Storage

#### IPFS 

A peer-to-peer (P2P) network of peers uses the Inter-Planetary File System (IPFS), a decentralised content-addressable storage system, to distribute stored items. In order to be "content addressable," a file must be hashed and its hash utilised to identify it. Then, by requesting a file by its hash, you can retrieve any file from any IPFS node.

#### Swarm

Similar to IPFS, Swarm is a content-addressable P2P storage system. Swarm is a piece of the Go-Ethereum toolkit developed by the Ethereum Foundation. Similar to IPFS, it enables you to store files that Swarm nodes distribute and replicate. Any Swarm file can be accessed by using its hash as a reference. Instead of using a centralised web server, Swarm enables you to visit a website from a decentralised P2P network.
## Chapter 13: The Ethereum Virtual Machine

The EVM is a virtual machine that executes a unique type of code known as EVM bytecode, similar to how the CPU of our computer executes machine language like x86 64. Even though it is possible to directly construct smart contracts in bytecode, EVM bytecode is quite cumbersome and challenging for programmers to read and comprehend. Instead, the majority of Ethereum developers create their applications in an application-oriented language, which is then translated into bytecode by a compiler.

Solidity provides a variety of high-level language abstractions, but because of these characteristics, it might be challenging to comprehend what is actually happening while my programme runs. I still had a lot of basic questions after reading the Solidity manual.A database engine is the EVM. You must comprehend how data is arranged, kept, and processed in order to comprehend how smart contracts function in any EVM language.
ability to contribute knowledge. It's still early days for the Ethereum toolchain. Knowing the EVM through and out will let you to create amazing tools for both you and others.

### Opcodes

Opcodes are a set of instructions that the EVM employs in the background to carry out particular activities. 140 different opcodes are available as of this writing. The EVM is made Turing-complete by these opcodes taken together. Given sufficient resources, the EVM can compute (nearly) anything. There are a maximum of 256 (162) opcodes because each opcode occupies one byte.

* Stack-manipulating opcodes (POP, PUSH, DUP, SWAP)

* Arithmetic/comparison/bitwise opcodes (ADD, SUB, GT, LT, AND, OR)

* Environmental opcodes (CALLER, CALLVALUE, NUMBER)

* Memory-manipulating opcodes (MLOAD, MSTORE, MSTORE8, MSIZE)

* Storage-manipulating opcodes (SLOAD, SSTORE)

* Program counter related opcodes (JUMP, JUMPI, PC, JUMPDEST)

* Halting opcodes (STOP, RETURN, REVERT, INVALID, SELFDESTRUCT)


Since every Ethereum node runs every contract execution, a hacker might try writing contracts with several computationally intensive activities to sluggish the network. Every opcode has its own base gas cost to shield against these attacks. In addition, a number of complex opcodes additionally impose a dynamic gas fee. For instance, the base cost of the opcode KECCAK256 (formerly SHA3) is 30 gas, and the dynamic cost is 6 gas per word (words are 256-bit items). Instructions that need a lot of computation cost more gas than simple, direct instructions. Additionally, each transaction begins with 21000 gas.

## Chapter 14: Consensus
