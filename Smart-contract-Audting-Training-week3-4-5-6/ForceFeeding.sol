// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract OneEtherGame {
    uint256 maxBalance = 3 ether;
    address winner;

    function play() external payable {
        require(msg.value == 1 ether, "Send one ether");
        uint256 contractBalance = address(this).balance;

        require(contractBalance <= maxBalance, "Game over");
        if (contractBalance == maxBalance) {
            winner = msg.sender;
        }
    }

    function claimReward() external {
        require(msg.sender == winner, "Not winner");
        (bool success, ) = payable(msg.sender).call{
            value: address(this).balance
        }("");

        require(success, "Failed to send Ether");
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

contract selfdestructAttacker {
    OneEtherGame oneEtherGame;

    constructor(address vulnerableContract) {
        oneEtherGame = OneEtherGame(vulnerableContract);
    }

    function forceSendEther() external {
        selfdestruct(payable(address(oneEtherGame)));
    }

    receive() external payable {}
}

//SOLUTION: Use other methods to track value gotten through the bid function,
//instead of `address(this).balance`, in other to protect contract accounting system
contract OneEtherGameTwo {
    uint256 maxBalance = 3 ether;
    address winner;
    uint256 balance;

    function play() external payable {
        require(msg.value == 1 ether, "Send one ether");
        balance += msg.value;

        require(balance <= maxBalance, "Game over");
        if (balance == maxBalance) {
            winner = msg.sender;
        }
    }

    function claimReward() external {
        require(msg.sender == winner, "Not winner");
        (bool success, ) = payable(msg.sender).call{
            value: address(this).balance
        }("");

        require(success, "Failed to send Ether");
    }

    function getContractBalance() external view returns (uint256) {
        return address(this).balance;
    }
}
