// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Rewarder {
    address payable beneficiary;
    uint256 endRegistrationTime;

    constructor(uint256 _endRegistrationTime) {
        endRegistrationTime = _endRegistrationTime;
    }

    function register() external {
        require(block.timestamp <= endRegistrationTime);
        beneficiary = payable(msg.sender);
    }

    function rewardBeneficiary() external {
        require(block.timestamp >= endRegistrationTime);

        beneficiary.transfer(address(this).balance);
    }
}
