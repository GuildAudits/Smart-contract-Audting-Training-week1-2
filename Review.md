# GUILD-AUDIT-Smart-contract-Auditing-Training

This is the review of Mastering Ethereum and five chapters of the Secureum book.

## Mastering Ethereum Review

### CHAPTER ONE - WHAT IS ETHEREUM
Ethereum is an open source, globally decentralized computing infrastructure that executes programs called smart contracts. It uses a blockchain to synchronize and store the system’s state changes, along with a cryptocurrency called ether to meter and constrain execution resource costs.

Ethereum is intended to be a general-purpose programmable blockchain with a virtual machine capable of running code of arbitrary and limitless complexity, in contrast to Bitcoin, which has a fairly restricted scripting language. Ethereum's language is Turing complete, whereas Bitcoin's Script language is purposefully limited to basic true/false evaluation of spending conditions. This means that Ethereum can directly serve as a general-purpose computer.

Ethereum’s development was planned over four distinct stages, with major changes occurring at each stage. A stage may include subreleases, known as "hard forks," that change functionality in a way that is not backward compatible.

Frontier, Homestead, Metropolis, and Serenity are the four primary development phases.

Ethereum is a Turing-complete system and a UTM because it can read from and write to memory while running a stored program in a state machine called the Ethereum Virtual Machine. Given the restrictions of finite memory, Ethereum can calculate any algorithm that can be calculated by any Turing machine.

A DApp is, at the very least, a smart contract and a web user interface. More broadly, a DApp is a web application that is built on top of open, decentralized, peer-to-peer infrastructure services.

A DApp is composed of at least:

* Smart contracts on a blockchain

* A web frontend user interface


### CHAPTER TWO - INTRO
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

### CHAPTER THREE - Ethereum Clients
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

to read more https://github.com/ethereumbook/ethereumbook/blob/develop/03clients.asciidoc


### CHAPTER FOUR - KEY & ADDRESSES
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

### CHAPTER FIVE - WALLETS

A wallet is a software application that serves as the primary user interface to Ethereum. The wallet controls access to a user’s money, managing keys and addresses, tracking the balance, and creating and signing transactions. In addition, some Ethereum wallets can also interact with contracts, such as ERC20 tokens.
From a programmer’s perspective, the word wallet refers to the system used to store and manage a user’s keys.

Ethereum wallets contain keys, not ether or tokens. Wallets are like keychains containing pairs of private and public keys. Users sign transactions with the private keys, thereby proving they own the ether. The ether is stored on the blockchain.

There are two primary types of wallets:
* Nondeterministic wallet
Where each key is independently generated from a different random number. The keys are not related to each other. This type of wallet is also known as a JBOK wallet, from the phrase "Just a Bunch of Keys.

* Deterministic wallet
Where all the keys are derived from a single master key, known as the seed. All the keys in this type of wallet are related to each other and can be generated again if one has the original seed. 

Mnemonic code words (BIP-39) are word sequences that encode a random number used as a seed to derive a deterministic wallet. The sequence of words is sufficient to recreate the seed, and from there recreate the wallet and all the derived keys

### CHAPTER SIX - TRANSACTIONS
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

