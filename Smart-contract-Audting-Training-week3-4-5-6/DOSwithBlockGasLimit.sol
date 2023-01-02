// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract Payroll {
    address payable[] workers;
    mapping(address => uint) workerAmount;

    function addWorkers(
        address payable _worker,
        uint256 _workerAmount
    ) external {
        workerAmount[_worker] = _workerAmount;

        workers.push(_worker);
    }

    function payAllWorkers() external {
        for (uint i; i < workers.length; i++) {
            workers[i].transfer(workerAmount[workers[i]]);
        }
    }
}

//SOLUTION: Since the dynamic array of addresses may be too big, its recommended to follow
//the pull over push pattern. But if necessary you must use a loop, then this can be used in some cases

contract PayrollTwo {
    Worker[] workers;

    struct Worker {
        address payable workerAddress;
        uint256 workerAmount;
    }

    uint256 currentIndex;

    function addWorkers(
        address payable _worker,
        uint256 _workerAmount
    ) external {
        workers.push(Worker(_worker, _workerAmount));
    }

    function payAllWorkers() external {
        uint256 i = currentIndex;
        while (i < workers.length && gasleft() < 210000) {
            workers[i].workerAddress.transfer(workers[i].workerAmount);
            i++;
        }

        currentIndex = i;
    }
}
