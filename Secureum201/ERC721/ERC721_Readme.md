# ERC721

Use a Non-Fungible Token (NFT) to uniquely identify something or someone. This kind of Token is ideal for use on websites that provide collectible items, access codes, lottery tickets, numbered seats for sporting events, concerts, etc. The ERC-721 was created to address this because this unique type of token has incredible potential and deserves a proper Standard.




The ERC-721 introduces a standard for non-fungible tokens (NFT), in other words, this type of token is special and can have a different value from another token from the same Smart Contract, possibly because of its age, rarity, or even something else like its appearance.





| **Function**  | **Return** | **Discription**|
| --------------- | --------------- |------------|
|constructor(string name_, string symbol_)||Initializes the contract by setting a name and a symbol to the token collection.|
| balanceOf(address _owner)| uint256 | Returns the number of tokens in owner's account.|
|_baseURI()|string||Base URI used to calculate tokenURI. If set, the baseURI and the tokenId will be concatenated to create the resulting URI for each token.|
| ownerOf(uint256 _tokenId) | address | Returns the owner of the tokenId token.(tokenId must exist).|
| approve(address _approved, uint256 _tokenId)  | |Moves amount tokens from the caller’s account to to.Returns a boolean value indicating whether the operation succeeded.|
| setApprovalForAll(address _operator, bool _approved) | | Approve or reject the operator's role as the caller's operator. |
| getApproved(uint256 _tokenId)| address |Returns the account approved for tokenId token.|
|  isApprovedForAll(address _owner, address _operator)| bool |Returns if the operator is allowed to manage all of the assets of owner.|
| transferFrom(address _from, address _to, uint256 _tokenId) | | Emitted when value tokens are moved from one account (from) to another (to).Note that value may be zero.|
| safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes data) |  |Safely transfers tokenId token from from to to.|
| safeTransferFrom(address _from, address _to, uint256 _tokenId) | |safely transfers the tokenId token from from to to, making sure that the recipients of the contract are familiar with the ERC721 protocol to avoid tokens becoming permanently locked.|


# ![Screenshot (75)](https://user-images.githubusercontent.com/82324643/206629442-1b4bcaca-3e17-4429-bdf9-f1d494e0c71b.png)




These events will be triggered or released once a user is given Transfer tokens from an account to another with proper verification or approve tokens.


![Screenshot (76)](https://user-images.githubusercontent.com/82324643/206629427-d2c1a52b-28a2-4556-9cdb-077ed6c57cde.png)

## Tokens Can Be Transferred to Another Account

Only owner or approved person can transfer their tokens means they transfer their ownership to other account.
![Screenshot (77)](https://user-images.githubusercontent.com/82324643/206630291-afe432f5-3031-44e4-943d-3b1644309035.png)

## ERC721Pausable

It can be useful to have a safety switch that will freeze all token transfers in the event of a serious bug, for example, or to prevent trades until the end of a trial period.

## ERC721Burnable

Owner can burn / destroyed their own tokens.

![Screenshot (78)](https://user-images.githubusercontent.com/82324643/206630957-b2df67a7-eac1-4b82-aad6-e49cc2b11982.png)

## ERC721URIStorage

ERC721 token with storage based token URI management.

![Screenshot (79)](https://user-images.githubusercontent.com/82324643/206631255-753369a9-8ad2-495d-bfb9-d25d1ae5d594.png)

## ERC721Votes

Votes' implementation of voting and delegation, which extends ERC721, counts each individual NFT as one vote unit.

Because voting requires tracking, which adds to the cost of every transfer, tokens do not count as votes until they are delegated. Holders of tokens have two options for appointing a representative: either they can choose to be their own representative or they can appoint a reliable representative who will decide how to use the votes in governance decisions.

| **Function**  | **Return** | **Discription**|
| --------------- | --------------- |------------|
| delegate(address delegatee)  |  | Delegate votes from the sender to delegatee|
|getPastVotes(address,blockNumber)|uint| return total number of votes at particular blockNumber|
| getPastTotalSupply(uint256 blockNumber)| uint256 | Note that this amount represents the total Tokens. It is NOT the total of all the delegated votes, though!(blockNumber must have been already mined)|


## Visualize ERC721 SmartContract


![ERC721](https://user-images.githubusercontent.com/82324643/206633222-37d6b4a5-0804-4fef-b576-13d67094e3f1.png)

