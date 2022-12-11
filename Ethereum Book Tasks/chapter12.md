# Decentralized Applications (DApps)
In this chapter we take a deep dive into decentralized applications, or DApps.  Smart contracts are a way to decentralize the controlling logic and payment functions of applications. Web3 DApps are about decentralizing all other aspects of an application: storage, messaging, naming, etc.

## What is a DApp?
A DApp ia an application that is mostly or entirely decentralized.

Consider all the possible aspects of an application that may be decentralized:

>Backend software (application logic)

>Frontend software

>Data storage

>Message communications

>Name resolution

## Auction Dapp
This section uses code snippets to demonstrate the process of making an Auction Smart Contract as well as including resources for the frontend

## Further Decentralizing the Auction DApp
Our DApp is already quite decentralized, but we can improve things.

The Auction Repository contract operates independently of any oversight, open to anyone. Once deployed it cannot be stopped, nor can any auction be controlled. Each auction has a separate chat room that allows anyone to communicate about the auction without censorship or identification.

There are two things we can do to make this DApp decentralized and resilient:

>Store all the application code on Swarm or IPFS.

>Access the DApp by reference to a name, using the Ethereum Name Service.

## Storing the Auction DApp on Swarm
Our Auction DApp already uses Swarm to store the icon image for each auction. This is a much more efficient solution than attempting to store data on Ethereum, which is expensive. It is also a lot more resilient than if these images were stored in a centralized service like a web server or file server.

## The Ethereum Name Service (ENS)
On the traditional internet, the Domain Name System (DNS) allows us to use human-readable names in the browser while resolving those names to IP addresses or other identifiers behind the scenes. On the Ethereum blockchain, the Ethereum Naming System (ENS) solves the same problem, but in a decentralized manner.

## The ENS Specification
ENS is specified mainly in three Ethereum Improvement Proposals: EIP-137, which specifies the basic functions of ENS; EIP-162, which describes the auction system for the .eth root; and EIP-181, which specifies reverse resolution of addresses.

## From App to DApp
Over the past several sections, we have gradually built a decentralized application. We started with a pair of smart contracts to run an auction for ERC721 deeds. These contracts were designed to have no governing or privileged accounts, so that their operation is truly decentralized. We added a frontend, implemented in JavaScript, that offers a convenient and user-friendly interface to our DApp. The auction DApp uses the decentralized storage system Swarm to store application resources such as images. The DApp also uses the decentralized communications protocol Whisper to offer an encrypted chat room for each auction, without any central servers.
