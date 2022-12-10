# Wallets
This chapter dives deep into how the word "wallet" is used to describe a few different things in Ethereum,  wallet is a software application that serves as the primary user interface to Ethereum. The wallet controls access to a user’s money, managing keys and addresses, tracking the balance, and creating and signing transactions. In addition, some Ethereum wallets can also interact with contracts, such as ERC20 tokens.

## Wallet Technology Overview
This section summarizes the various technologies used to construct secure and flexible Ethereum Wallets, Its talkes about how a onsideration in designing wallets is balancing convenience and privacy. The most convenient Ethereum wallet is one with a single private key and address that you reuse for everything.
>A common misconception about Ethereum is that Ethereum wallets contain ether or tokens. In fact, very strictly speaking, the wallet holds only keys. The ether or other tokens are recorded on the Ethereum blockchain. 
 There are two types if wallets, nondeterministic wallets where each key is independently generated from a different random number and deterministic wallets where all the keys are derived from a single master key, known as the seed.
 
## Nondeterministic (Random Wallets)
This section explains Nondeterministic wallets and shows how a JSON file 
>The use of nondeterministic wallets is discouraged for anything other than simple tests. They are too cumbersome to back up and use for anything but the most basic of situations. Instead, use an industry-standard–based HD wallet with a mnemonic seed for backup.

## Deterministic (Seeded) Wallets
Deterministic or "seeded" wallets are wallets that contain private keys that are all derived from a single master key, or seed, This design makes the security of the seed of utmost importance, as only the seed is needed to gain access to the entire wallet. 

## Seeds and Mnemonic Codes (BIP-39)
These are ways to encode a private key for secure backup and retrieval, The currently preferred method is using a sequence of words that, when taken together in the correct order, can uniquely recreate the private key also known as a "mnemonic".

## Wallet Best Practices
This section lists the best practices for wallets which are:

>Mnemonic code words, based on BIP-39

>HD wallets, based on BIP-32

>Multipurpose HD wallet structure, based on BIP-43

>Multicurrency and multiaccount wallets, based on BIP-44


