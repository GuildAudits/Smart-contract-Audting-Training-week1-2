# Transactions
This chapter explains Transactions and shows how they are signed messages originated by an externally owned account (EOA), transmitted by the Ethereum network, and recorded on the Ethereum blockchain.

## The Structure of a Transaction
A transaction contains the following data:

Nonce
A sequence number, issued by the originating EOA, used to prevent message replay

Gas price
The amount of ether (in wei) that the originator is willing to pay for each unit of gas

Gas limit
The maximum amount of gas the originator is willing to buy for this transaction

Recipient
The destination Ethereum address

Value
The amount of ether (in wei) to send to the destination

Data
The variable-length binary data payload

v,r,s
The three components of an ECDSA digital signature of the originating EOA

