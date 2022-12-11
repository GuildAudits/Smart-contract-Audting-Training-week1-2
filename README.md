# Mastering Ethereum Book and Secureum 201 Technical Review
## _Mastering Ethereum Book Review(part1)_

### This is a comprehensive review of all the chapters from 1-14

## Chapter One: _What is Ethereum_
Chapter One of Mastering Ethereum delves into the basics of the Ethereum blockchain and its potential to revolutionize industries beyond just finance.

The Ethereum blockchain is a decentralized platform that allows for the creation of smart contracts, which are self-executing contracts with the terms of the agreement written into the code. This allows for the automation of transactions, reducing the need for intermediaries and increasing trust and transparency in transactions.

In addition to enabling smart contracts, the Ethereum blockchain also allows for the creation of decentralized applications, or dApps. These dApps are open-source and decentralized, allowing for a more secure and transparent application ecosystem.

One of the key benefits of the Ethereum blockchain is its ability to facilitate the creation of decentralized autonomous organizations, or DAOs. These organizations are run by a set of rules encoded in smart contracts, allowing for a transparent and autonomous decision-making process.

The potential applications of the Ethereum blockchain go beyond finance, with industries such as supply chain management, voting systems, and insurance being ripe for disruption. The flexibility and adaptability of the Ethereum blockchain make it a powerful tool for transforming these industries.

Overall, Chapter One of Mastering Ethereum provides a thorough introduction to the basics of the Ethereum blockchain and its potential to revolutionize various industries. With its ability to facilitate smart contracts, dApps, and DAOs, the Ethereum blockchain has the potential to change the way we do business and interact with each other.

## Chapter Two: _Ethereum Basics_

Ethereum is a decentralized platform that allows for the creation and execution of smart contracts and decentralized applications (DApps). One key feature of Ethereum is its use of the Ethereum Virtual Machine (EVM), which is the runtime environment for smart contracts on the network. The EVM is a decentralized, Turing-complete virtual machine that allows for the execution of arbitrary code on the Ethereum blockchain.

In this chapter, we will explore Ethereum basics, including the use of wallets, creation of transactions, and running of basic smart contracts. We will also discuss the ether currency unit, which is the primary unit of value on the Ethereum network. Ether is subdivided into smaller units, with the smallest unit being wei.

Additionally, we will cover the various denominations of ether and their common and scientific names. For example, 1 ether is equal to 1 quintillion wei, and is often referred to colloquially as "Ether" or "ETH."

In terms of choosing an Ethereum wallet, there are many options available with different features and designs. It is important to choose a wallet that suits your needs and preferences, and it is also important to note that you can easily change wallets if needed.

Overall, this chapter provides a basic introduction to Ethereum and its key features, including the use of the EVM and the ether currency unit.

## Chapter Three: _Ethereum Clients_
An Ethereum client is a software application that implements the Ethereum specification and communicates over the peer-to-peer network with other Ethereum clients. Different Ethereum clients interoperate if they comply with the reference specification and the standardized communications protocols. While these different clients are implemented by different teams and in different programming languages, they all "speak" the same protocol and follow the same rules. As such, they can all be used to operate and interact with the same Ethereum network.

Ethereum is an open source project, and the source code for all the major clients is available under open source licenses (e.g., LGPL v3.0), free to download and use for any purpose. Open source means more than simply free to use, though. It also means that Ethereum is developed by an open community of volunteers and can be modified by anyone. More eyes means more trustworthy code.

Ethereum is defined by a formal specification called the "Yellow Paper" (see references). This is in contrast to, for example, Bitcoin, which is not defined in any formal way. Where Bitcoin’s "specification" is the reference implementation Bitcoin Core, Ethereum’s specification is documented in a paper that combines an English and a mathematical (formal) specification. This formal specification, in addition to various Ethereum Improvement Proposals, defines the standard behavior of an Ethereum client. The Yellow Paper is periodically updated as major changes are made to Ethereum.

As a result of Ethereum’s clear formal specification, there are a number of independently developed, yet interoperable, software implementations of an Ethereum client. Ethereum has a greater diversity of implementations running on the network than any other blockchain, which is generally regarded as a good thing. Indeed, it has, for example, proven itself to be an excellent way of defending against attacks on the network, because exploitation of a particular client’s implementation strategy simply hassles the developers while they patch the exploit, while other clients keep the network running almost unaffected

This text you see here is *actually- written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and
watch the results in the right.

## Chapter Four: _Cryptography_
Cryptography is a crucial aspect of the Ethereum blockchain, as it ensures the security and integrity of transactions on the network. Chapter 4 of Mastering Ethereum delves into the various cryptographic mechanisms used on the Ethereum platform, including elliptic curve cryptography, hash functions, and digital signatures.

Elliptic curve cryptography (ECC) is a type of public-key cryptography, which uses mathematical algorithms based on elliptic curves to create digital signatures. This allows for the creation of a unique digital identity for each user on the Ethereum network, which can be used to sign transactions and verify their authenticity.

Hash functions, on the other hand, are used to create unique fingerprints for data on the Ethereum network. These fingerprints, known as hashes, are used to verify the integrity of transactions and prevent tampering.

Digital signatures, which are created using ECC, provide an additional layer of security for transactions on the Ethereum network. They allow users to prove their identity and ownership of assets without revealing their private keys.

In addition to these cryptographic mechanisms, Ethereum also uses zero-knowledge proofs, which allow users to prove the possession of certain information without revealing the actual information itself. This adds an additional level of privacy and security to transactions on the network.

Overall, the use of cryptography in Ethereum is essential for maintaining the security and integrity of the network. Without it, the Ethereum platform would be vulnerable to attacks and fraud, undermining its potential as a decentralized platform for digital transactions.

## Chapter Five: _Wallets_
This Chapter explores the various wallet options available on the Ethereum platform. A wallet is a software program that allows users to store, manage, and transfer their digital assets on the Ethereum network.

One popular wallet option is the Ethereum wallet, which is included in the Ethereum software package. This wallet allows users to manage their Ether and other ERC20 tokens, as well as create and manage smart contracts.

Another wallet option is the MetaMask wallet, which is a browser-based wallet that allows users to interact with the Ethereum network through their web browser. This wallet is popular among users who want to access the Ethereum network without having to download the full Ethereum software package.

Hardware wallets, such as the Ledger Nano S, are also an option for users who want to store their digital assets offline for added security. These wallets provide a physical device that users can use to securely store their private keys and other sensitive information.

In addition to these options, there are also various third-party wallet services that offer additional features and security measures, such as multi-sig functionality and secure storage of private keys.

Overall, the wallet options on the Ethereum platform provide users with a range of choices for securely managing their digital assets. It is important for users to carefully consider their needs and choose a wallet that meets their specific requirements.

## Chapter Six: _Transactions_
Chapter six delves into the various aspects of transactions on the Ethereum network. Transactions are the fundamental building blocks of the Ethereum platform, as they allow users to transfer Ether and other digital assets between accounts.

One key aspect of transactions on Ethereum is the use of gas. Gas is a unit of measurement that represents the computational power required to execute a transaction or smart contract on the network. Users must pay a fee in Ether for each transaction they make, which is calculated based on the amount of gas required for the transaction to be processed.

Another important aspect of transactions on Ethereum is the nonce. The nonce is a number that is incremented with each transaction made by a specific account, and it ensures that transactions are processed in the order they were intended. This prevents potential double-spending of digital assets on the network.

In addition to these key points, Chapter 6 also covers the various types of transactions on Ethereum, including value transfers, contract deployments, and contract calls. It also discusses the process of transaction confirmation and the role of miners in the Ethereum network.

Transactions are a crucial aspect of the Ethereum platform, and a thorough understanding of their mechanics is essential for anyone looking to develop on the Ethereum network.

## Chapter Seven: _Smart Contracts and Solidity_
Chapter seven of Mastering Ethereum covers the concept of smart contracts and the Solidity programming language used to create them. Smart contracts are self-executing contracts with the terms of the agreement between buyer and seller being directly written into lines of code.

One key aspect of smart contracts on Ethereum is their ability to automate complex processes and eliminate the need for intermediaries. This allows for more efficient and secure execution of transactions, as the terms of the contract are enforced by the Ethereum network rather than relying on a third party.

The Solidity programming language is the primary language used to create smart contracts on the Ethereum platform. It is a high-level, object-oriented language that is similar to languages like JavaScript and C++.

Below is a simple example of a smart contract written in Solidity:
```
pragma solidity ^0.5.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
```
This contract allows users to store a single value on the Ethereum network and retrieve it at a later time. It uses the set() function to store the value and the get() function to retrieve it.

In general, smart contracts and the Solidity programming language are useful tools for developers working on the Ethereum platform. They allow the creation of complex, decentralized applications capable of automating various network processes and transactions.

## Chapter Eight: _Smart Contracts and Vyper_
The Vyper programming language, which is an alternative to Solidity for creating smart contracts on the Ethereum platform, is covered in Chapter 8 of Mastering Ethereum. Vyper is a straightforward, easy-to-understand language that is intended to be more transparent and secure than Solidity.

One key feature of Vyper is its emphasis on simplicity and readability. Unlike Solidity, which is a highly complex language with many advanced features, Vyper has a small set of core features and a straightforward syntax. This makes it easier for developers to understand and audit the code of Vyper contracts.

Another advantage of Vyper is its focus on security. Vyper does not support certain complex features that are found in Solidity, such as inheritance and complex data types. This reduces the potential for bugs and vulnerabilities in Vyper contracts.

Below is a simple example of a Vyper contract:
```
# Simple Storage contract

storedData: public(uint256)

@public
def __init__():
    self.storedData = 0

@public
def set(x: uint256):
    self.storedData = x

@public
@view
def get() -> uint256:
    return self.storedData

```
This contract is similar to the Solidity contract in the previous example, allowing users to store and retrieve a single value on the Ethereum network. However, it is written in Vyper and uses a slightly different syntax and features.

Broadly speaking, Vyper is a compelling alternative to Solidity for developers seeking to build smart contracts on the Ethereum platform. Its ease of use and emphasis on security make it an appealing option for certain types of projects.

## Chapter Nine: _Smart Contract Security_
Smart contract security is a crucial aspect of the Ethereum platform, as it ensures the integrity and reliability of decentralized applications built on the network. Chapter 9 of Mastering Ethereum covers various aspects of smart contract security, including common vulnerabilities and best practices for writing secure contracts.

One common vulnerability in smart contracts is the use of insecure randomness. In many cases, contracts rely on randomness to make decisions or generate values. However, if the randomness is not generated in a secure manner, it can be exploited by attackers to gain an unfair advantage.

For example, consider a simple contract that uses randomness to determine the winner of a lottery:
```
pragma solidity ^0.5.0;

contract SimpleLottery {
    address public winner;

    function pickWinner() public {
        uint random = uint(keccak256(abi.encodePacked(block.difficulty, now)));
        winner = address(random % participants.length);
    }
}
```
In this contract, the pickWinner() function uses the block difficulty and current time to generate a random value, which is then used to determine the winner of the lottery. However, this method of generating randomness is not secure, as an attacker could manipulate the block difficulty or time to bias the outcome in their favor.

To avoid this type of vulnerability, it is important to use secure randomness generation in smart contracts. This can be achieved using external sources of randomness, such as random.org or Oraclize, or by using the RANDAO contract provided by the Ethereum Foundation.

Another common vulnerability in smart contracts is the use of uninitialized storage variables. In Solidity, storage variables are automatically initialized to their default values, which can lead to unexpected behavior in certain cases.

For example, consider the following contract:
```
pragma solidity ^0.5.0;

contract SimpleBank {
    mapping(address => uint) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }
}
```
This contract allows users to deposit Ether into their account, and it tracks their balances using a mapping. However, it does not explicitly initialize the balances of new users to 0, which means that their balances will be set to the default value of 0.

This can lead to unexpected behavior, as users who have never deposited Ether into their account will still be able to withdraw funds from their account. To avoid this type of vulnerability, it is important to explicitly initialize storage variables to their desired values in smart contracts.

Overall, smart contract security is an essential aspect of the Ethereum platform. By understanding common vulnerabilities and following best practices for writing secure contracts, developers can build decentralized applications that are reliable and secure.


## Chapter Ten: _Tokens_
This Chapter of Mastering Ethereum covers the concept of tokens on the Ethereum platform, which are digital assets that can be traded and transferred on the network. Tokens can represent a wide range of assets, including cryptocurrencies, commodities, and even traditional financial instruments.

One key aspect of tokens on Ethereum is the use of the ERC20 standard, which defines a set of rules and interfaces that tokens must follow in order to be compatible with the Ethereum network. This standard allows for the creation of interoperable tokens that can be easily traded and used in decentralized applications.

Below is a simple example of an ERC20 token contract written in Solidity:
```
pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/SafeERC20.sol";

contract SimpleToken is SafeERC20 {
    string public name = "Simple Token";
    string public symbol = "ST";
    uint8 public decimals = 18;
    uint256 public totalSupply = 1000000000;

    constructor() public {
        _mint(msg.sender, totalSupply);
    }
}
```
This contract defines a simple ERC20 token with a fixed supply of 1 billion units. It specifies the name, symbol, and number of decimals for the token, as well as the initial supply of the token.

In addition to the ERC20 standard, there are also other token standards on Ethereum, such as ERC721 for non-fungible tokens and ERC1155 for hybrid tokens. These standards provide additional functionality and flexibility for developers looking to create tokens on the Ethereum platform.

Tokens, in general, are an important part of the Ethereum ecosystem because they allow for the creation and trading of digital assets on the network. Standard token interfaces, such as ERC20, enable the creation of interoperable tokens that can be easily used in decentralized applications.

## Chapter Eleven: _Oracles_
Oracles, which are external data sources that provide information to smart contracts on the Ethereum network, are discussed in Chapter eleven of Mastering Ethereum. Oracles enable smart contracts to interact with the outside world and access data that would otherwise be unavailable on the blockchain.

One key aspect of oracles on Ethereum is the use of decentralized oracle networks, such as ChainLink and Tellor. These networks consist of a network of nodes that provide data to smart contracts in a decentralized and trustless manner.

Below is a simple example of a smart contract that uses an oracle to retrieve the current price of Ether:
```
pragma solidity ^0.5.0;

import "https://github.com/smartcontractkit/chainlink/solidity/contracts/ChainlinkClient.sol";

contract SimpleOracle {
    ChainlinkClient public chainlink;

    constructor(address _chainlink) public {
        chainlink = ChainlinkClient(_chainlink);
    }

    function requestEtherPrice() public {
        // Set the parameters for the ChainLink request
        Chainlink.Request memory req = buildChainlinkRequest(
            // The job ID, which specifies the type of data to be retrieved
            "0x4c7b7ffb66b344fbaa64995af81e355a",
            // The address of the oracle contract
            "0x2f90A6D021db21e1B2A077c5a37B3C7f8B1F97b3",
            // The callback function that will be called when the data is available
            this,
            "fulfillEtherPrice"
        );

        // Send the request to the ChainLink network
        chainlink.sendChainlinkRequestTo(req, oracle);
    }

    function fulfillEtherPrice(bytes32 _requestId, uint256 _price) public {
        // The _price parameter contains the current price of Ether
    }
}

```
This contract uses the ChainLink oracle network to retrieve the current price of Ether. It specifies the job ID for the data to be retrieved and the callback function that will be called when the data is available.

In addition to decentralized oracle networks, there are also various centralized oracle providers that offer a range of data sources and services. These providers can be useful for developers who need access to specific types of data that are not available on decentralized networks.

Oracles are a critical component of the Ethereum ecosystem because they enable smart contracts to access external data and interact with the outside world. Decentralized Oracle networks provide a trustless and secure method of accessing this data, whereas centralized providers provide a broader range of data sources and services.

## Chapter Twelve: _Decentralized Applications (DApps)_
Chapter twelve of Mastering Ethereum covers the concept of decentralized applications (DApps), which are applications that are built on the Ethereum platform using smart contracts and other blockchain technologies. DApps offer a number of benefits over traditional centralized applications, including security, transparency, and immutability.

One key aspect of DApps on Ethereum is the use of the Ethereum Virtual Machine (EVM), which is the runtime environment for smart contracts on the Ethereum network. The EVM allows for the execution of arbitrary code, which makes it possible to build a wide range of applications on the Ethereum platform.

Below is a simple example of a DApp written in Solidity:
```
pragma solidity ^0.5.0;

import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/ownership/Ownable.sol";

contract SimpleDApp is Ownable {
    string public name;

    constructor(string memory _name) public {
        name = _name;
    }

    function setName(string memory _name) public onlyOwner {
        name = _name;
    }
}

```
This DApp allows the owner of the contract to set the name of the application. It uses the `Ownable` contract from the `OpenZeppelin` library to enforce ownership restrictions on the `setName()` function.

In addition to the EVM, DApps on Ethereum can also use various other blockchain technologies, such as decentralized storage systems, oracles, and off-chain computing platforms. These technologies provide additional functionality and scalability for DApps on the Ethereum platform.

Sum up, DApps are an important part of the Ethereum ecosystem because they provide a platform for developing decentralized applications that can leverage the Ethereum blockchain's unique features. Developers on the Ethereum platform can build powerful and secure applications by leveraging the EVM and other blockchain technologies.

## Chapter Thirteen: _The Ethereum Virtual Machine_
The Ethereum Virtual Machine (EVM), which is the runtime environment for smart contracts on the Ethereum network, is explained in Chapter thirteen of Mastering Ethereum. The EVM is a decentralized, Turing-complete virtual machine that allows arbitrary code to be executed on the Ethereum blockchain.

One key aspect of the EVM is its use of the Ethereum Virtual Machine Instruction Set Architecture (EVMISA), which defines a set of instructions that can be executed by the EVM. This instruction set includes basic arithmetic and logical operations, as well as more complex operations such as jumps and loops.

Below is a simple example of a smart contract written in Solidity that uses the EVMISA to implement a simple counter:
```
pragma solidity ^0.5.0;

contract SimpleCounter {
    uint256 public count;

    function increment() public {
        // Increment the count by 1
        count++;
    }
}

```
This contract defines a public `count` variable and a `increment()` function that increments the value of `count` by 1. The `increment()` function uses the ++ operator, which is part of the EVMISA, to `increment` the value of count.

In addition to the EVMISA, the EVM also includes various other features, such as a stack-based architecture and a memory model, that are necessary for the execution of smart contracts on the Ethereum platform.

Overall, the EVM is an essential part of the Ethereum platform, as it provides the runtime environment for smart contracts on the network. Its use of the EVMISA and other features allows for the execution of arbitrary code on the Ethereum blockchain, enabling the development of complex decentralized applications.

## Chapter Fourteen: _Consensus_
Chapter fourteen of Mastering Ethereum covers the concept of consensus, which is the process by which participants in a decentralized system reach agreement on the state of the system. In the context of blockchain networks, consensus allows for the secure and reliable operation of the network without the need for a central authority.

One key aspect of consensus on Ethereum is the use of the proof-of-work (PoW) consensus algorithm, which is used by the Ethereum network to achieve consensus on the state of the blockchain. PoW is a computational puzzle-solving algorithm that requires participants to perform complex calculations in order to participate in the consensus process.

PoW is a proven and secure consensus algorithm, but it has some disadvantages, such as high energy consumption and slow transaction processing. As a result, Ethereum is currently in the process of transitioning to a new consensus algorithm, proof-of-stake (PoS), which is more efficient and scalable.

PoS is a consensus algorithm in which participants are selected to validate transactions and create new blocks on the blockchain based on the amount of stake they hold in the network. This means that participants with a larger stake have a higher probability of being selected to validate transactions and create new blocks.

PoS has several advantages over PoW, including lower energy consumption, faster transaction processing, and more equitable distribution of rewards. However, it also has some challenges, such as the need for effective mechanisms to prevent stake-based attacks and ensure the security of the network.

Overall, consensus is an essential aspect of the Ethereum platform, as it allows for the secure and reliable operation of the network without the need for a central authority. The transition from PoW to PoS will provide improved efficiency and scalability for the Ethereum network, while continuing to ensure the security and integrity of the blockchain.

---

## _Secureum 201 Review_
### This is a comprehensive review on 5 topics from Secureum 201

1. The topic of reentrancy vulnerabilities in Solidity is discussed in detail in the article. The author highlights the importance of using the "require" statement to prevent reentrancy attacks and provides examples of how to implement this in code.

2. The article also discusses the use of the "view" and "pure" keywords in Solidity, and how they can help improve the security and efficiency of smart contracts. The author provides examples of how to use these keywords in practice.

3. Another topic covered in the article is the use of the "selfdestruct" keyword in Solidity. The author explains how this keyword can be used to securely destroy a contract and transfer its balance to another address.

4. The article also touches on the topic of creating and using libraries in Solidity. The author provides an example of how to create a library and use it in a contract, as well as the benefits of using libraries in terms of code organization and reusability.

5. Finally, the article discusses the use of the "return" keyword in Solidity, and how it can be used to return multiple values from a function. The author provides examples of how to use the "return" keyword in practice, and highlights the importance of properly handling return values in order to avoid potential errors.
