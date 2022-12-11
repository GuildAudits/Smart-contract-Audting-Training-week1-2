# Cryptography 
This chapter explains how cryptography is one of Ethereum's foundational technologies, cryptography can, for example, also be used to prove knowledge of a secret without revealing that secret (e.g., with a digital signature), or to prove the authenticity of data (e.g., with digital fingerprints, also known as "hashes").

## Keys and Addresses
Ethereum has two different types of accounts which are: Contracts and Externally Owned Accounts(EOAs), private keys are the heart of user interaction with Ethereum, account addresses are derived directly from private keys as a private key uniquely determins a single Ethereum address which can also be called account.

Private Keys however are not stored on Ethereum, this makes them remain private. Access and control of funds is achieved with digital signatures, which are also created using the private key. Ethereum transactions require a valid digital signature to be included in the blockchain. Anyone with a copy of a private key has control of the corresponding account and any ether it holds. 

## Public Key Cryptography and Cryptocurrency
This section explains how public key cryptography is a core part of modern day information security. The key exchange protocol was first published in the 1970s by Martin Hellman, Whitfield Diffie, and Ralph Merkle. Public key cryptography uses unique keys to secure information. These keys are based on mathematical functions that have a special property.

## Private Keys
This section explains how a private key is simply a number, picked at random and how Ownership and control of the private key is the root of user control over all funds associated with the corresponding Ethereum address, as well as access to contracts that authorize that address. The private key is used to create signatures required to spend ether by proving ownership of funds used in a transaction.

## Public Keys
This section explains how public keys are generated on Ethereum. The public key is calculated from the private key using elliptic curve multiplication, which is practically irreversible: K = k * G, where k is the private key, G is a constant point called the generator point, K is the resulting public key, and * is the special elliptic curve "multiplication" operator.

## Eliptic Curve Cryptography Explained
Elliptic curve cryptography is a type of asymmetric or public key cryptography based on the discrete logarithm problem as expressed by addition and multiplication on the points of an elliptic curve, the chapter also uses diagrams and graphs to further explain

## Inter Exchange Client Address Protocol
The Inter exchange Client Address Protocol (ICAP) is an Ethereum address encoding that is partly compatible with the International Bank Account Number (IBAN) encoding, offering a versatile, checksummed, and interoperable encoding for Ethereum addresses, the rest of the section explains how to create ICAP addresses
