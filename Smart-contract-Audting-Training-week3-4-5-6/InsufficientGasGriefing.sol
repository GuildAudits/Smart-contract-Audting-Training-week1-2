// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Griefing {
    Target target;
    mapping(bytes => bool) executed;

    constructor(address _target) {
        target = Target(_target);
    }

    function execute(bytes memory _value) external {
        require(!executed[_value], "Duplicate call");
        executed[_value] = true;

        address(target).call(abi.encodeWithSignature("execute(bytes)", _value));
    }
}

contract Target {
    uint256[] values;

    function execute(bytes memory _value) external returns (bool) {
        for (uint i; i < _value.length; i++) {
            values.push(i + 1);
        }

        return true;
    }
}

contract GriefingTwo {
    Target target;
    mapping(bytes => bool) executed;

    uint256 estimatedGas = 5302217;
    uint256 gasBtwCalls = 80000;

    constructor(address _target) {
        target = Target(_target);
    }

    function execute(bytes memory _value) external {
        uint256 gasAvailable = gasleft() - gasBtwCalls;

        require(
            gasAvailable - (gasAvailable / 64) >= estimatedGas,
            "Not enough  gas"
        );

        require(!executed[_value], "Duplicate call");

        executed[_value] = true;

        (bool success, ) = address(target).call(
            abi.encodeWithSignature("execute(bytes)", _value)
        );

        require(success, "Failed to perform transaction");
    }
}

//SOURCES: https://www.getsecureworld.com/blog/smart-contract-gas-griefing-attack-the-hidden-danger/, https://swcregistry.io/docs/SWC-126
