pragma solidity ^0.8.0;

contract rejectContracts {
    function isContract(address account) public view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    function TakeAllTheMoney(address account) public {
        require(!isContract(account), "Error: no contract allowed");
        require(msg.sender == tx.origin, "Error: no contract allowed");
        payable(account).transfer(address(this).balance);
    }
}
