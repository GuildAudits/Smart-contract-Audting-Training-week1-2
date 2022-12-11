# Tokens 
Nowadays, "tokens" administered on blockchains are redefining the word to mean blockchain-based abstractions that can be owned and that represent assets, currency, or access rights.

## How Tokens are Used
The most obvious use of tokens is as digital private currencies. However, this is only one possible use. Tokens can be programmed to serve many different functions, often overlapping.

>Currency: 
A token can serve as a form of currency, with a value determined through private trade.

>Resource: 
A token can represent a resource earned or produced in a sharing economy or resource-sharing environment; for example, a storage or CPU token representing resources that can be shared over a network.

>Asset: 
A token can represent ownership of an intrinsic or extrinsic, tangible or intangible asset; for example, gold, real estate, a car, oil, energy, MMOG items, etc.

>Access: 
A token can represent access rights and grant access to a digital or physical property, such as a discussion forum, an exclusive website, a hotel room, or a rental car.

>Equity: 
A token can represent shareholder equity in a digital organization (e.g., a DAO) or legal entity (e.g., a corporation).

>Voting: 
A token can represent voting rights in a digital or legal system.

>Collectible: 
A token can represent a digital collectible (e.g., CryptoPunks) or physical collectible (e.g., a painting).

>Identity: 
A token can represent a digital identity (e.g., avatar) or legal identity (e.g., national ID).

>Attestation:
A token can represent a certification or attestation of fact by some authority or by a decentralized reputation system (e.g., marriage record, birth certificate, college degree).

>Utility: 
A token can be used to access or pay for a service.

## Tokens and Fungibility
Tokens are fungible when we can substitute any single unit of the token for another without any difference in its value or function.

## Counterparty Risk
Counterparty risk is the risk that the other party in a transaction will fail to meet their obligations. Some types of transactions suffer additional counterparty risk because there are more than two parties involved.

## Tokens and Intrinsicality
Some tokens represent digital items that are intrinsic to the blockchain. Those digital assets are governed by consensus rules, just like the tokens themselves. This has an important implication: tokens that represent intrinsic assets do not carry additional counterparty risk.

## The ERC20 Token Standard
An ERC20-compliant token contract must provide at least the following functions and events:

>totalSupply: 
Returns the total units of this token that currently exist. ERC20 tokens can have a fixed or a variable supply.

>balanceOf: 
Given an address, returns the token balance of that address.

>transfer: 
Given an address and amount, transfers that amount of tokens to that address, from the balance of the address that executed the transfer.

>transferFrom: 
Given a sender, recipient, and amount, transfers tokens from one account to another. Used in combination with approve.

>approve: 
Given a recipient address and amount, authorizes that address to execute several transfers up to that amount, from the account that issued the approval.

>allowance: 
Given an owner address and a spender address, returns the remaining amount that the spender is approved to withdraw from the owner.

>Transfer: 
Event triggered upon a successful transfer (call to transfer or transferFrom) (even for zero-value transfers).

>Approval: 
Event logged upon a successful call to approve.

ERC20 optional functions

In addition to the required functions listed in the previous section, the following optional functions are also defined by the standard:

>name: 
Returns the human-readable name (e.g., "US Dollars") of the token.

>symbol: 
Returns a human-readable symbol (e.g., "USD") for the token.

>decimals: 
Returns the number of decimals used to divide token amounts. For example, if decimals is 2, then the token amount is divided by 100 to get its user representation.

## ERC20 implementations
Include: Conscensys EIP20 and OpenZeppelin StandardToken

The rest of this section uses code snippets to show how to create ERC20 Tokens
