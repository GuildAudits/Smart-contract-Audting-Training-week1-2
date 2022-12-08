## ERC20

The ERC20 standard defines a set of functions to be implemented by all ERC20 tokens so as to allow integration with other contracts, wallets, or marketplaces.



![Screenshot (66)](https://user-images.githubusercontent.com/82324643/206461914-ec6b81ab-92a8-4c17-8901-6cc74d254eb0.png)



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




![Screenshot (67)](https://user-images.githubusercontent.com/82324643/206461931-e98e8702-9afc-477b-8e52-e4a69169c6aa.png)
![Screenshot (68)](https://user-images.githubusercontent.com/82324643/206461939-86caef02-8075-4131-8610-ef0ab87c7ef4.png)
