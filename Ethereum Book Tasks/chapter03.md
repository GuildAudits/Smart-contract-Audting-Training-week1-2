# Ethereum Clients
These are software applications that implement Ethereum specifications and communnicates over the peer-peer network with other Ethereum clients.

## Ethereum Networks
There are six implementations of the Ethereum Protocol, written in six different languages:

>Parity, written in Rust

>Geth, written in Go

>cpp-ethereum, written in C++

>pyethereum, written in Python

>Mantis, written in Scala

>Harmony, written in Java

## Should I run a Full Node?
This section exlains how the health, resilience, and censorship resistance of blockchains depend on them having many independently operated and geographically dispersed full nodes. Each full node can help other new nodes obtain the block data to bootstrap their operation, as well as offering the operator an authoritative and independent verification of all transactions and contracts.

However its not necessary to run a full node on a live mainnet network to develop on Ethereum, you can do almost everything on the Testnet and deploy on the Ethereum mainnet after as running a full node would incur high costs in hardware resources and bandwidth ad a full node can download up to 300 GB of data.

## Advantages and Disadvantages of a Full Node
Advantages of a Full Node include:
>Supports the resilience and censorship resistance of Ethereum-based networks

>Authoritatively validates all transactions

>Can interact with any contract on the public blockchain without an intermediary

>Can directly deploy contracts into the public blockchain without an intermediary

>Can query (read-only) the blockchain status (accounts, contracts, etc.) offline

>Can query the blockchain without letting a third party know the information you’re reading

while its disadvantages include:

>Requires significant and growing hardware and bandwidth resources

>May require several days to fully sync when first started

>Must be maintained, upgraded, and kept online to remain synced.

## Advantages and Disadvantages of Public Testnet

Advantages of a Public Testnet Include:

>A testnet node needs to sync and store significantly less data compared to mainnet—about 75 GB depending on the network.

>A testnet node can sync fully in much less time.

>Deploying contracts or making transactions requires test ether, which has no value and can be acquired for free from several "faucets."

>Testnets are public blockchains with many other users and contracts, running "live."

While its disadvantages include:

>You can’t use "real" money on a testnet; it runs on test ether. Consequently, you can’t test security against real adversaries, as there is nothing at stake.

>There are some aspects of a public blockchain that you cannot test realistically on a testnet. For example, transaction fees, although necessary to send transactions, are not a consideration on a testnet, since gas is free. Further, the testnets do not experience network congestion like the public mainnet sometimes does.

## Running an Ethereum Client
This section goes into the hardware requirements needed to run a Full Node, its minimum requirements are:

Minimum requirements:

>CPU with 2+ cores

>At least 300 GB free storage space

>4 GB RAM minimum with an SSD, 8 GB+ if you have an HDD

>8 MBit/sec download internet service

While the recomended specifications are:

>Fast CPU with 4+ cores

>16 GB+ RAM

>Fast SSD with at least 500 GB free space

>25+ MBit/sec download internet service

The rest of the chapter explains the software requirements for building and running a client, which include the installation of Git,Go,Parity



