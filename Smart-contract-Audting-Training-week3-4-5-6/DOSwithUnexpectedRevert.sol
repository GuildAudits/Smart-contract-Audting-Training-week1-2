// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Bidder {
    uint256 highestBid;
    address currentHighestBidder;

    function bid() external payable {
        require(msg.value > highestBid, "Bid higher");
        require(payable(currentHighestBidder).send(highestBid)); // ensure the bid is sent back, else revert the transaction
        highestBid = msg.value;
        currentHighestBidder = msg.sender;
    }
}

//SOLUTION: Favour pull over push design pattern
