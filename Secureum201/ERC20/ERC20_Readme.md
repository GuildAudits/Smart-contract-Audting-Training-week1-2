# ERC20

### The ERC20 standard defines a set of functions to be implemented by all ERC20 tokens so as to allow integration with other contracts, wallets, or marketplaces.

-------------




| **Function**  | **Return** | **Discription**|
| --------------- | --------------- |------------|
| totalSupply()  | uint256 | Returns the amount of tokens in existence.|
| balanceOf(address account) | uint256 | Returns the amount of tokens owned by account.|
| transfer(address to, uint256 amount) | bool|Moves amount tokens from the caller’s account to to.Returns a boolean value indicating whether the operation succeeded.|
| allowance(address owner, address spender) | uint256 | Returns the remaining number of tokens that spender will be allowed to spend on behalf of owner through transferFrom. This is zero by default.|
| approve(address spender, uint256 amount) | bool | Sets amount as the allowance of spender over the caller’s tokens.Returns a boolean value indicating whether the operation succeeded.|
|  transferFrom(address from, address to, uint256 amount) | bool |Moves amount tokens from from to to using the allowance mechanism. amount is then deducted from the caller’s allowance.Returns a boolean value indicating whether the operation succeeded.|
| Transfer(address from, address to, uint256 value)  | | Emitted when value tokens are moved from one account (from) to another (to).Note that value may be zero.|
|Approval(address owner, address spender, uint256 value) |  | Emitted when the allowance of a spender for an owner is set by a call to approve. value is the new allowance.|


![Screenshot (66)](https://user-images.githubusercontent.com/82324643/206461914-ec6b81ab-92a8-4c17-8901-6cc74d254eb0.png)


ERC20 functions allow an external user, say a crypto-wallet app, to find out a user’s balance and transfer funds from one user to another with proper authorization.


![Screenshot (67)](https://user-images.githubusercontent.com/82324643/206461931-e98e8702-9afc-477b-8e52-e4a69169c6aa.png)

These events will be triggered or released once a user is given permission to withdraw tokens from an account and following the actual transfer of the tokens.



![Screenshot (68)](https://user-images.githubusercontent.com/82324643/206461939-86caef02-8075-4131-8610-ef0ab87c7ef4.png)

An associative array defined by the expression `mapping(address => uint256)` has values of type uint256, a 256-bit integer typically used to store token balances, and keys of type address, a number used to represent account addresses.

Each owner account's token balance will be kept in the first mapping object, called balances.

The second mapping object `mapping(address => mapping (address => uint256)) allowed;`, allowed, will list all of the accounts authorised to withdraw money from a specific account along with the maximum withdrawal amount permitted for each account.

## Deciding how many ICO tokens to issue


![Screenshot (69)](https://user-images.githubusercontent.com/82324643/206470071-19ec1176-5e2b-4866-a98b-3bb541ef22b2.png)

Assign all of the tokens initially to the "contract owner," or the account that deployed the smart contract, by setting the total number of tokens at contract creation time.

A constructor is a special function automatically called by Ethereum right after the contract is deployed. It is typically used to initialize the token’s state using parameters passed by the contract’s deploying account.

The constructor of a contract can only be accessed by the deploying account. This function allows tokens that are available to the "contract owner" account when the contract is deployed.

![Screenshot (70)](https://user-images.githubusercontent.com/82324643/206473286-b5a9adb2-199d-4775-a8e7-7a4d1b2b3822.png)

Tokens that are fully compliant with the ERC-20 structure and have a unique feature that distinguishes them from other tokens are known as mintable ERC-20 tokens. With mintable tokens, new tokens can always be produced and added to the existing supply.



Standard ERC-20 tokens must be included in a fixed supply because they lack the mintable feature.

## Tokens Can Be Transferred to Another Account

The transfer function, as its name implies, is used to transfer numTokens worth of tokens from the balance of the owner to that of another user, or receiver. The person executing the function, or msg.sender, is the owner who is transferring the tokens, suggesting that only the token owner can do so.

A predicate must be asserted in the manner of solidity. In this instance, the transferring account has a balance that is sufficient to carry out the transfer. The transaction is immediately rolled back and no changes are recorded in the blockchain if a require statement fails.


![Screenshot (71)](https://user-images.githubusercontent.com/82324643/206473330-1603e84c-903b-4b2c-a729-d466a40053ef.png)

## Accept delegates' request to withdraw tokens



The function of approve is to permit an owner, i.e., msg.sender, to give the go-ahead for a delegate account—possibly the marketplace—to withdraw tokens from and transfer them to other accounts.

This process ends with the firing of an Approval event.

![Screenshot (72)](https://user-images.githubusercontent.com/82324643/206474549-1bab0b09-ccb5-44cf-be09-b969bbf71256.png)


## ERC20Burnable

ERC20 extension permits token holders to destroy both their own tokens and tokens they have an allowance for in a way that can be verified off-chain (via event analysis).


![Screenshot (73)](https://user-images.githubusercontent.com/82324643/206475501-6bdea69a-9175-4a85-9995-0e2e2024995d.png)

      burnFrom(address account, uint256 amount)

Destroys amount tokens from account, deducting from the caller’s allowance.

Requirements: The caller must have allowance for accounts's tokens of at least amount.

## ERC20Pausable

ERC20 token with token transfers, minting, and burning that can be paused.
Useful in situations like delaying trades until after a trial period or having a backup switch to stop all token transfers in the event of a serious bug.

## ERC20Vtes

The voting power of each account is recorded historically by this extension (checkpoints). Voting authority may be transferred either directly by calling the delegate function or indirectly by providing a signature for use with the delegateBySig function. Through the public accessors getVotes and getPastVotes, voting power can be accessed.
By default, voting power is not taken into account by token balance. This lowers the cost of transfers. Having to delegate to oneself in order to activate checkpoints and track one's voting power is a drawback.

| **Function**  | **Return** | **Discription**|
| --------------- | --------------- |------------|
| delegate(address delegatee)  |  | Delegate votes from the sender to delegatee|
| getPastTotalSupply(uint256 blockNumber)| uint256 | Note that this amount represents the total of all balances. It is NOT the total of all the delegated votes, though!(blockNumber must have been already mined)|
| _ afterTokenTransfer(address from, address to, uint256 amount) |  | Move voting power when tokens are transferred.|



## ERC20Snapshot

An ERC20 token is enhanced by this contract with a snapshot mechanism. The balances and total supply at the time the snapshot is created are saved for access later.

This can be used to securely develop token-based mechanisms like weighted voting or trustless dividends. By using the same balance from multiple accounts, a "double spend" attack can be carried out in naive implementations. Those attacks are no longer relevant when dividends or voting power are computed using snapshots. Additionally, it can be used to develop a productive ERC20 forking mechanism. After function execution it's return snapshotId and by using this snapshotId anyone can check status of tokens, votes,...at that block.




![Screenshot (74)](https://user-images.githubusercontent.com/82324643/206479920-c0985745-47de-4081-8e3c-5ecc54764b95.png)


## Visualize ERC20 SmartContract










![ERC20](https://user-images.githubusercontent.com/82324643/206477609-d1b7ae88-f99b-4f4e-9ed4-532a027b2897.png)




