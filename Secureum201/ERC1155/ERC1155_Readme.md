# ERC1155 (Multi-Token Standard)

Smart contracts that manage various token types typically have a standard interface. Any combination of fungible tokens, non-fungible tokens, or other configurations may be included in a single ERC 1155 contract (eg, semi-substitute tokens).

This interface for smart contracts can display both fungible and non-fungible token types in any quantity. For each type of token, you must deploy a separate contract in accordance with existing standards like ERC-20. A single non-substitutional index serves as the token ID in the ERC-721 standard, and these non-substitutional groups are deployed as a single contract that holds the settings for the entire collection. A new configurable token type may be represented by each token ID under the ERC-1155 multi-token standard, in contrast. This particular token type has unique metadata, resources, and other characteristics.

## Batch Transfers

The only difference in ERC-1155 is that we pass the values as an array and we also pass an array of id's. 
In ERC-1155 we only have transferFrom, no transfer. To use it like a regular transfer, just set the from address to the address that's calling the function


![Screenshot (83)](https://user-images.githubusercontent.com/82324643/206667390-5175553b-e87d-4921-bb2b-1ebfe83e9185.png)

## Batch Balance

Even simpler for the balance call, we can retrieve multiple balances in a single call. We pass the array of owners, followed by the array of token ids.
Compared to ERC-20, the approvals are slightly different. Instead of approving specific sums, you can use setApprovalForAll to set an operator to approved or not approved.

Through isApprovedForAll, the current status can be read. You cannot specify the number of tokens to approve or even the type of token to approve.

Simplicity was considered when designing this. One address can only have everything approved.
![Screenshot (84)](https://user-images.githubusercontent.com/82324643/206667399-f9f32f65-883d-45ff-af0d-a35a0658b835.png)

## Receive Hook

An ERC1155-compliant smart contract MUST call this function on the token recipient contract, at the end of a `safeTransferFrom` after the balance has been updated.        
        This function MUST return `bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"))` (i.e. 0xf23a6e61) if it accepts the transfer.
        This function MUST revert if it rejects the transfer.
        
        
![Screenshot (85)](https://user-images.githubusercontent.com/82324643/206667406-16982a71-6558-4b52-93ff-263033f8b459.png)


## ERC1155Burnable

Extension of ERC1155 that allows token holders to destroy both their own tokens and those that they have been approved to use.

## ERC1155Supply

Useful for scenarios where Fungible and Non-fungible tokens have to be clearly identified. Note: While a totalSupply of 1 might mean the corresponding is an NFT, there is no guarantees that no other token with the same id are not going to be minted.






## visualize ERC1155 

![Screenshot (82)](https://user-images.githubusercontent.com/82324643/206668856-85bf4d22-9b21-49a2-926d-b61e1f0c1a15.png)
