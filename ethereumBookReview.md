# Guild Audit Targetted Book Review
This is the review of Mastering Ethereum by Gavin Wood and 5 chapters of Secureum 201

## Mastering Ethereum
The mastering ethereum book is a collaboration of Andreas M. Antonopoulos and Dr. Gavin Wood, the book is an extension to ethereum yellow paper with detailed and breakdown explanation.

### Chapter One - What is Ethereum
Ethereum is a deterministic but practically unbounded state machine, consisting of globally accessible singleton state and a virtual machine responsible for change to the state, with the changed state being synchronized across the network. It is an open source, globally decentralized computing infrastructure that execute programs called smart contracts. It uses a cryptocurrency called ether to meter and constrain execution resource costs. All of this definition makes it known as "The World Computer".

Ethereum shares similar components with other blockchains with components like:
* A peer-to-peer network connecting participants and propagating transactions and blocks of verified transactions, based on a standardized "gossip" protocol.
* A set of consensus rule governing what makes for a valid state transition.
* A state machine that processes transactions according to the consensus rules.
* A chain of cryptographically secured blocks that acts as a journal of all the verified and accepted state transitions.
* An incentivization scheme for those contributing to te security of the network.

Ethereum differs from Bitcoin in the sense that, unlike Bitcoin, which has a very limited scripting language, Ethereum is designed to be a general-purpose programmable blockchain that runs a virtual machine capable of executing code of arbitrary and unbounded complexity. Where bitcoin is constrained to simple true/false evaluation of spending conditions, Ethereum is quasi-turing complete, meaning that Ethereum can straightforwardly function as a general-purpose computer to a certain point.

### Chapter Two - Ethereum Basics
Ethereum currency is called ether symbolized as ETH or Ξ, ether is subdivided into smaller unit:
* wei - The smallest unit of Ether with 1 ether equivalent to 1 quitillion wei (1 * 10^18^ or 1,000,000,000,000,000,000).
* Kilowei - Also known as Babbage its equivalency to 1 ether is 1,000,000,000,000,000.
* Megawei - Also known as Lovelace its equivalency to 1 ether is 1,000,000,000,000.
* Gigawei - Also known as Shanon and its equivalency to 1 ether is 1,000,000,000.
* Microether - Also known as Szabo and its equivalency to 1 ether is 1,000,000.
* Ether - Major currency unit of the ethereum network.
* Kiloether - Also known as Grand, and 1000 ether is equal to 1 kiloether. and so on.

Also, one of the thing to understand is the term wallet, responsible for keeping user's private key and helps in managing user's ethereum account. For a wallet application to work, it must have access to your private keys, the most common type of wallet is Metamask and the type of account created on metamask is called an externally owned account (EOA), which differs from contract created account with the presence of private keys.

### Chapter Three - Ethereum Clients
An Ethereum client is a software application that implements the Ethereum specification and communicates over the peer-to-peer network with other Ethereum clients.Different Ethereum clients interoperate provided they comply with the specification of the protocols. There are variety of ethereum clients written in different languages to implement the ethereum specification. They are:
* Parity, written in Rust
* Geth, written in Go
* cpp-ethereum, written in C++
* pyethereum, written in Python
* Mantis, written in Scala
* Harmony, written in Java.
Diversified implementation makes node providers go for the software application of their choice with no sole focus on one and running a node means you are contributing to the increment in security of the blockchain protocol.

Running a Full node comes with its own advantage provided users meet up with the minimum requirement of:
* CPU with 2 cores
* At least 300 GB free storage space
* 4 GB RAM minimum with an SSD, 8 GB+ if you have an HDD
* 8 MBit/sec download internet service

And the advantages are:
* Supports the resilience and censorship resistance of Ethereum-based networks
* Can interact with any contract on the public blockchain without an intermediary
* Can query the blockchain without letting a third party know the information you’re reading
* Gain from the incentive of the protocol
* Can query (read-only) the blockchain status (accounts, contracts, etc.) offline
* Can directly deploy contracts into the public blockchain without an intermediary.

### Chapter Four - Cryptography
Cryptography is a branch of mathematics used in computer security, it is known as secret writing and encompasses more than just encryption. It is important to understand that no part of the ethereum protocol is encrypted or involves encryption, which means all communication within the protocol and between nodes can be read by anyone. The usage of cryptography in Ethereum protocol is mainly Public key cryptography also known as assymetric cryptography. It is used to control ownership of funds in the form of private keys and addresses.

A private key is simply a number, picked at random. Ownership and control of the private key is the root of user control over all funds associated with the corresponding Ethereum address, as well as access to contracts that authorize that address. The private key is used to create signatures required to spend ether by proving ownership of funds used in a transaction, with this, the private key must remain secret at all times, hence call for the needs of wallet.

Outside Ethereum, cryptography is used as zero knowledge proof, where a prover proves to a verifier  that a given statement is true without revealing the statement.

### Chapter Five - Wallets
As explained in the previous chapter why we need a wallet, it is necessary to expantiate the usefulness of wallet. In a simple term and from programmer's perspective, the word wallet refers to the system used to store and manage a user’s keys, it also serves as the primary user interface to Ethereum.

It is important to note that the ethereum wallet doesn't contain ether or token as it only function as a private key keeper and helps read some data from the blockchain like EOA balance.

There are two primary types of wallets,distinguished by whether the keys they contain are related to each other or not:
* The first type is a nondeterministic wallet, where each key is independently generated from a different random number. The keys are not related to each other.
* The second type of wallet is a deterministic wallet, where all the keys are derived from a single master key, known as the seed. All the keys in this type of wallet are related to each other and can be generated again if one has the original seed.

In Conclusion, Wallets are the foundation of any user-facing blockchain application. They allow users to manage collections of keys and addresses. Wallets also allow users to demonstrate their ownership of ether, and authorize transactions, by applying digital signatures.

### Chapter Six - Transactions
Every state change on the blockchain start from a transaction. They are the inputs that cause the ethereum virtual machine to evaluate contracts, update balances, and modify the state of the ethereum blockchain.

Transaction are signed messages originated by an externally owned account (EOA), transmitted by the ethereum network, and recorded on the ethereum blockchain.

A transaction is a serialized binary message that contains the following data:
* Nonce - A sequence number issued by the originating EOA, used to prevent message replay.
* Gas Price - The amount of ether (in wei) that the originator is willing to pay for each unit of gas
* Gas limit - The maximum amount of gas the originator is willing to pay for the transaction
* Recipient - The destination Ethereum Address
* Value - Amount of ether to send to the destination
* Data - The variable-length binary data payload
* v,r,s - The three components of an ECDSA digital signature of the originating EOA.

The main payload of a transaction is contained in two fields: value and data. Transactions can have both value and data, only value, only data, or neither value nor data. All four combinations are valid. A transaction with only value is a payment. A transaction with only data is an invocation. A transaction with both value and data is both a payment and an invocation. A transaction with neither value nor data is just a waste of gas.

The data payload sent to smart contract is a hex-serialized of encoding of:

* Function selector: the first 4 bytes of the Keccak-256 hash of the function’s prototype. This allows the contract to unambiguously identify which function you wish to   invoke. The prototype of a function is defined as the string containing the name of the function, followed by the data types of each of its arguments, enclosed in parentheses and separated by commas.

* Function arguments: encoded according to the rules for the various elementary types defined in the ABI specification.

### Chapter Seven - Smart Contracts and Solidity
Definition from Cryptographer <b>Nick Szabo</b>, "smart contract are set of promises, specified in digital form, including protocols within which the parties perform on the other promises"

In relation to Blockchain, Smart contract are simply immutable computer programs, the terms immutable means Once deployed, the code of a smart contract cannot change. Unlike with traditional software, the only way to modify a smart contract is to deploy a new instance.

In a more detailed way, smart contract are:
* Computer programs
* Immutable
* Deterministic - The outcome of the execution of a smart contract is the same for everyone who runs it, given the context of the transaction that initiated its execution and the state of the Ethereum blockchain at the moment of execution.

Smart contract are simply written in a high-level language, such as solidity but in other to run, they must be compiled to the low-level bytecode that runs in the EVM. Once compiled, they are deployed on the ethereum platform using a special contract creation transaction to address zero.

Solidity was created by Dr. Gavin Wood as a language explicitly for writing smart contracts with features to directly support execution in the decentralized environment of the Ethereum world computer. The basic data types in solidity are:
* Boolean (bool)
* Signed and Unsigned Integer (int, uint)
* Address
* Bytes Array (Fixed and Dynamic)
* Enum
* Arrays
* Struct
* Mapping
* Time units
* Ether units

Some of the Pre-defined Global variables are:
* msg.sender
* msg. value
* msg.gas
* msg.data
* msg.sig
* tx.gasprice
* tx.origin
* block.timestamp
* block.number
* address.balance
* address.transfer
* address.send
* address.call
* address.delegatecall

some of the built-in functions are:
* ddmod, mulmod - For modulo addition and multiplication
* keccak256, sha256, sha3, ripemd160 - Functions to calculate hashes with various standard hash algorithms.
* ecrecover - Recovers the address used to sign a message from the signature.
* selfdestruct(recipient address) - Deletes the current contract, sending any remaining ether in the account to the recipient address.
* this - The address of the currently executing contract account.

And contract definitions:
* Interface
* Library
* contract

Function’s visibility includes; public, private, internal, external. While function’s behaviour includes; pure, constant, view, payable

### Chapter Eight - Smart contract and Vyper
Vyper is an experimental, contract-oriented programming language for the Ethereum Virtual Machine that strives to provide superior auditability, by making it easier for developers to produce intelligible code.

#### What makes Vyper differ from Solidity
Due to the fact that Vyper brings in readability to smart contract, Vyper takes out some features seen as complicated in Solidity, examples are:
* Vyper does not support inheritance
* Vyper does not support inline assembly
* Vyper does not support function overloading
* Vyper does not support variable typecasting but instead has a convert function to perform explicit casts.
* Boundaries to using conditional statment to prevent infinite loop

### Chapter Nine - Smart contract security
A smart contract will execute exactly what is written, which is not always what the programmer intended. Furthermore, all smart contracts are public, and any user can interact with them simply by creating a transaction. Any vulnerability can be exploited, and losses are almost always impossible to recover. It is therefore critical to follow best practices and use well-tested design patterns.

Defensive programming is a style of programming that is particularly well suited to smart contracts. It emphasizes the following, all of which are best practices:
* Simplicity - Complexity is the enemy of security. The simpler the code, the lower the chances are of a bug or unforseen effect occuring.
* Programmers should cultivate the habit of reusing code, if a library seen as secured already implemented what you intend to write on, you can go on to inherit the code.
* Code quality - It is important programmers check all lines of code carefully as it is immutable once deployed.
* Readability/ Auditability - Code should be clear and easy to comprehend. The easier it is to read, the easier it is to audit.
* Test coverage - test everything you can before deployment.

Some of the smart contract security risks:
* Reentrancy - These operations require the contracts to submit external calls. These external calls can be hijacked by attackers, who can force the contracts to execute further code (through a fallback function), including calls back into themselves. Attacks of this kind were used in the infamous DAO hack.
* Arithmetic overflow/underflow - variables in Solidity can be exploited if user input is unchecked and calculations are performed that result in numbers that lie outside the range of the data type that stores them.
* Unexpected Ether - Typically, when ether is sent to a contract it must execute either the fallback function or another function defined in the contract. There are two exceptions to this, where ether can exist in a contract without having executed any code. Contracts that rely on code execution for all ether sent to them can be vulnerable to attacks where ether is forcibly sent. A common defensive programming technique that is useful in enforcing correct state transitions or validating operations is invariant checking. There are two ways in which ether can (forcibly) be sent to a contract without using a payable function or executing any code on the contract: Self-destruct/suicide and Pre-sent ether. This attack can be used in a low planned game contract to prevent opponent from winning.
* DelegateCall - Delegatecall opcodes are useful in allowing Ethereum developers to modularize their code. In delegatecall, code executed at the targetted address is run in the context of the calling contract and msg.sender and msg.value remain unchanged. But carelessly using delegatecall to deployed libraries can result to vulnerabilities.
* Entropy Illusion - this is a vulnerability that rises from finding entropy or randomness in a contract (onchain randomness), usually in a betting, lottery or raffle draw contract.
* Unchecked CALL return values - The call and send functions return a Boolean indicating whether the call succeeded or failed. Thus, these functions have a simple caveat, in that the transaction that executes these functions will not revert if the external call (intialized by call or send) fails; rather, the functions will simply return false. A common error is that the developer expects a revert to occur if the external call fails, and does not check the return value. So, it's important to check the return value to notify if success or not.
* Uninitialized Storage Pointers
* Floating point and precision - his means that floating-point representations must be constructed with integer types in Solidity. This can lead to errors and vulnerabilities if not implemented correctly.
* Tx.origin authentication - Contracts that authorize users using the tx.origin variable are typically vulnerable to phishing attacks that can trick users into performing authenticated actions on the vulnerable contract.

In conclusion, it is important to follow best practices in smart contract design and code writing to avoid many severe pitfalls and traps.


### Chapter Ten - Tokens
Tokens are Blockchain-based abstractions that can be owned and can either represent assets, currency, or access rights.

Tokens can be used as:
* Currency - A token can serve as a form of currency, with a value determined through private trade.
* Resource -  token can represent a resource earned or produced in a sharing economy or resource-sharing environment; for example, a storage or CPU token representing resources that can be shared over a network.
* Asset - A token can represent ownership of an intrinsic or extrinsic, tangible or intangible asset; for example, gold, real estate, a car, oil, energy, MMOG items, etc.
* Access - A token can represent access rights and grant access to a digital or physical property, such as a discussion forum, an exclusive website, a hotel room, or a rental car.
* Equity - A token can represent shareholder equity in a digital organization (e.g., a DAO) or legal entity (e.g., a corporation).
* Voting - A token can represent voting rights in a digital or legal system.
* Collectible - A token can represent a digital collectible (e.g., CryptoPunks) or physical collectible (e.g., a painting).
* Identity - A token can represent a digital identity (e.g., avatar) or legal identity (e.g., national ID).
* Attestation - A token can represent a certification or attestation of fact by some authority or by a decentralized reputation system (e.g., marriage record, birth certificate, college degree).
* Utility - A token can be used to access or pay for a service.

### Chapter Eleven - Oracles
In the context of blockchains, an oracle is a system that can answer questions that are external to Ethereum. Ideally oracles are systems that are trustless, meaning that they do not need to be trusted because they operate on decentralized principles.

Oracles can be used to relay data securely to DApp frontends directly. Oracles can therefore be thought of as a mechanism for bridging the gap between the off-chain world and smart contracts.

Some examples of data that might be provided by oracles include:
* Random numbers/entropy from physical sources such as quantum/thermal processes: e.g., to fairly select a winner in a lottery smart contract.
* Exchange rate data: e.g., for accurate pegging of cryptocurrencies to fiat currency
* Ether market price: e.g., for fiat gas price oracles
and so on.

All oracles provide a few key functions, by definition. These include the ability to:

* Collect data from an off-chain source.

* Transfer the data on-chain with a signed message.

* Make the data available by putting it in a smart contract’s storage.

Oracles provide a crucial service to smart contracts: they bring external facts to contract execution. With that, of course, oracles also introduce a significant risk—if they are trusted sources and can be compromised, they can result in compromised execution of the smart contracts they feed.

Generally, when considering the use of an oracle be very careful about the trust model. If you assume the oracle can be trusted, you may be undermining the security of your smart contract by exposing it to potentially false inputs. That said, oracles can be very useful if the security assumptions are carefully considered.

Decentralized oracles can resolve some of these concerns and offer Ethereum smart contracts trustless external data. Choose carefully and you can start exploring the bridge between Ethereum and the "real world" that oracles offer.

### Chapter Twelve - Dapps
Dapp also known as Decentralized Application are mostly or entirely decentralized. It is oftened applied to any smart contract with a web frontend.
Advantages to creating a DApp that a typical centralized architecture cannot provide are:
* Resiliency
* Transparency
* Censorship Resistance

Dapp is made of:
* Backend (Smart Contract)
* Frontend (For user interaction)
* IPFS (For data storage)
* Decentralized Message Communication protocol

Decentralized applications are the culmination of the Ethereum vision, as expressed by the founders from the very earliest designs. While a lot of applications call themselves "DApps" today, most are not fully decentralized. However, it is already possible to construct applications that are almost completely decentralized. Over time, as the technology matures further, more and more of our applications can be decentralized, resulting in a more resilient, censorship-resistant, and free web.


### Chapter Thirteen - EVM
At the heart of the Ethereum protocol and operation is the Ethereum Virtual Machine, or EVM for short. it is a computation engine, handling the state change of the Ethereum blockchain. The EVM is a quasi–Turing-complete state machine; "quasi" because all execution processes are limited to a finite number of computational steps by the amount of gas available for any given smart contract execution and it's part of Ethereum that handles smart contract deployment and execution.

The EVM has a stack-based architecture, storing all in-memory values on a stack. It works with a word size of 256 bits (mainly to facilitate native hashing and elliptic curve operations) and has several addressable data components:

* An immutable program code ROM, loaded with the bytecode of the smart contract to be executed.
* A volatile memory, with every location explicitly initialized to zero.
* A permanent storage that is part of the Ethereum state, also zero-initialized.

The job of the EVM is to update the Ethereum state by computing valid state transitions as a result of smart contract code execution, as defined by the Ethereum protocol. This aspect leads to the description of Ethereum as a transaction-based state machine, which reflects the fact that external actors (i.e., account holders and miners) initiate state transitions by creating, accepting, and ordering transactions.

### Chapter Fourteen - Consensus
Consensus rules are rules that everyone must agree to for the system to operate in a decentralized, yet deterministic manner. When it comes to the core function of decentralized record keeping and verification, it can become problematic to rely on trust alone to ensure that information derived from state updates is correct. This rather general challenge is particularly pronounced in decentralized networks because there is no central entity to decide what is true. The lack of a central decision-making entity is one of the main attractions of blockchain platforms, because of the resulting capacity to resist censorship and the lack of dependence on authority for permission to access information. However, these benefits come at a cost: without a trusted arbitrator, any disagreements, deceptions, or differences need to be reconciled using other means. Consensus algorithms are the mechanism used to reconcile security and decentralization.

The most two popular consensus mechanisms are:
* Proof of Work
* Proof of Stake