// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract AccessingPrivateData {
    uint256 private verySecretNumber;
    address owner;

    constructor(uint256 _verySecretNumber) {
        verySecretNumber = _verySecretNumber;
        owner = msg.sender;
    }

    function viewSecretNumber() external view returns (uint256) {
        require(msg.sender == owner);
        return verySecretNumber;
    }
}
