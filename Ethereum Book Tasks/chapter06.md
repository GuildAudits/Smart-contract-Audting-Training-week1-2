# Transactions
This chapter explains Transactions and shows how they are signed messages originated by an externally owned account (EOA), transmitted by the Ethereum network, and recorded on the Ethereum blockchain.

## The Structure of a Transaction
A transaction contains the following data:

>Nonce: 
A sequence number, issued by the originating EOA, used to prevent message replay

>Gas price: 
The amount of ether (in wei) that the originator is willing to pay for each unit of gas

>Gas limit: 
The maximum amount of gas the originator is willing to buy for this transaction

>Recipient: 
The destination Ethereum address

>Value: 
The amount of ether (in wei) to send to the destination

>Data: 
The variable-length binary data payload

>v,r,s: 
The three components of an ECDSA digital signature of the originating EOA

## The Transaction Nonce
The nonce is an attribute of the originating address that is, it only has meaning in the context of the sending address. However, the nonce is not stored explicitly as part of an account’s state on the blockchain. Instead, it is calculated dynamically, by counting the number of confirmed transactions that have originated from an address.
The section further goes to explain with examples how to keep track on Nonces

## Transaction Gas
Gas is the fuel of Ethereum. Gas is not ether—it’s a separate virtual currency with its own exchange rate against ether. Ethereum uses gas to control the amount of resources that a transaction can use, since it will be processed on thousands of computers around the world. Gas is separate from ether in order to protect the system from the volatility that might arise along with rapid changes in the value of ether, and also as a way to manage the important and sensitive ratios between the costs of the various resources that gas pays for (namely, computation, memory, and storage). The section further goes to explain with examples how to calculate Gas.

## Transaction Recipient
This is the Ethereum address whish is the recipient of a transaction

## Transaction Value and Data
The main "payload" of a transaction is contained in two fields: value and data. Transactions can have both value and data, only value, only data, or neither value nor data. All four combinations are valid.

## Separating Signing and Transmission (Offline Signing)
Once a transaction is signed, it is ready to transmit to the Ethereum network. The three steps of creating, signing, and broadcasting a transaction normally happen as a single operation. The processes include:

>Create an unsigned transaction on the online computer where the current state of the account, notably the current nonce and funds available, can be retrieved.

>Transfer the unsigned transaction to an "air-gapped" offline device for transaction signing, e.g., via a QR code or USB flash drive.

>Transmit the signed transaction (back) to an online device for broadcast on the Ethereum blockchain, e.g., via QR code or USB flash drive.
