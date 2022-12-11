This is the review of five chapters of the Secureum book.

# SECUREUM 201

## 1- Uniswap V2 

Uniswap is an automated liquidity protocol powered by a constant product formula and implemented in a system of non-upgradeable smart contracts on the Ethereum blockchain. The automated market making algorithm used by Uniswap is x*y=k, where x and y represent a token pair that allow one token to be exchanged for the other as long as the “constant product” formula is preserved i.e. trades must not change the product (k) of a pair’s reserve balances (x and y). Core concepts:

* Pools: Each Uniswap liquidity pool is a trading venue for a pair of ERC20 tokens. When a pool contract is created, its balances of each token are 0; in order for the pool to begin facilitating trades, someone must seed it with an initial deposit of each token. This first liquidity provider is the one who sets the initial price of the pool. They are incentivized to deposit an equal value of both tokens into the pool. Whenever liquidity is deposited into a pool, unique tokens known as liquidity tokens are minted and sent to the provider’s address. These tokens represent a given liquidity provider’s contribution to a pool. 

* Swaps: allows one to trade one ERC-20 token for another, where one token is withdrawn (purchased) and a proportional amount of the other deposited (sold), in order to maintain the constant x*y=k

* Flash Swaps: allows one to withdraw up to the full reserves of any ERC20 token on Uniswap and execute arbitrary logic at no upfront cost, provided that by the end of the transaction they either: 1) pay for the withdrawn ERC20 tokens with the corresponding pair tokens 2) return the withdrawn ERC20 tokens along with a small fee

* Oracles: enables developers to build highly decentralized and manipulation-resistant on-chain price oracles. A price oracle is any tool used to view price information about a given asset. Every pair measures (but does not store) the market price at the beginning of each block, before any trades take place i.e. price at the end of the previous block which is added to a single cumulative-price variable weighted by the amount of time this price existed. This variable can be used by external contracts to track accurate time-weighted average prices (TWAPs) across any time interval.

## 2- Contract Types

* Abstract Contracts: Contracts need to be marked as abstract when at least one of their functions is not implemented. They use the abstract keyword.

* Interfaces: They cannot have any functions implemented. There are further restrictions: 1) They cannot inherit from other contracts, but they can inherit from other interfaces 2) All declared functions must be external 3) They cannot declare a constructor 4) They cannot declare state variables. They use the interface keyword.

* Libraries: They are deployed only once at a specific address and their code is reused using the DELEGATECALL opcode. This means that if library functions are called, their code is executed in the context of the calling contract. They use the library keyword.

## 3- Function Overriding Changes 

The overriding function may only change the visibility of the overridden function from external to public. The mutability may be changed to a more strict one following the order: nonpayable can be overridden by view and pure. view can be overridden by pure. payable is an exception and cannot be changed to any other mutability.

## 4- Library Restrictions: 

In comparison to contracts, libraries are restricted in the following ways:

* they cannot have state variables

* they cannot inherit nor be inherited

* they cannot receive Ether

* they cannot be destroyed

* it can only access state variables of the calling contract if they are explicitly supplied (it would have no way to name them, otherwise)

* Library functions can only be called directly (i.e. without the use of DELEGATECALL) if they do not modify the state (i.e. if they are view or pure functions), because libraries are assumed to be stateless 

## 5- State Variable Shadowing

It is possible to use the same variable twice in Solidity, but it can lead to unintended side effects. This is especially difficult regarding working with multiple contracts.

contract SuperContract {
    uint a = 1;
}

contract SubContract is SuperContract {
    uint a = 2;
}


Here we can see that SubContract inherits SuperContract and the variable a is defined twice with different values. Now say we use a to perform some function in SubContract, functionality inherited from SuperContract will no longer work since the value of a has been modified. To avoid this vulnerability, it's important we check the entire smart contract system for ambiguities. It's also important to check for compiler warnings, as they can flag these ambiguities so long as they're in the smart contract.
