# Smart Contracts and Vyper
Vyper is an experimental, contract-oriented programming language for the Ethereum Virtual Machine that strives to provide superior auditability, by making it easier for developers to produce intelligible code.

## Vulnerabilities and Vyper
The three basic categories of trace vulnerabilities are:

>Suicidal contracts: 
Smart contracts that can be killed by arbitrary addresses

>Greedy contracts: 
Smart contracts that can reach a state in which they cannot release ether

>Prodigal contracts: 
Smart contracts that can be made to release ether to arbitrary addresses

## Comparison to Solidity
This section compares vyper to solidity using code snippets and images

## Preconditions and Postconditions
Vyper handles preconditions, postconditions, and state changes explicitly. While this produces redundant code, it also allows for maximal readability and safety, a developer should observe the following three points:

>Condition: 
What is the current state/condition of the Ethereum state variables?

>Effects: 
What effects will this smart contract code have on the condition of the state variables upon execution? That is, what will be affected, and what will not be affected? Are these effects congruent with the smart contract’s intentions?

>Interaction: 
After the first two considerations have been exhaustively dealt with, it is time to run the code. Before deployment, logically step through the code and consider all of the possible permanent outcomes, consequences, and scenarios of executing the code, including interactions with other contracts.

## Decorators
The following decorators may be used at the start of each function:

>@private: 
The @private decorator makes the function inaccessible from outside the contract.

>@public: 
The @public decorator makes the function both visible and executable publicly. For example, even the Ethereum wallet will display such functions when viewing the contract.

>@constant: 
Functions with the @constant decorator are not allowed to change state variables. In fact, the compiler will reject the entire program (with an appropriate error) if the function tries to change a state variable.

>@payable: 
Only functions with the @payable decorator are allowed to transfer value.

## Compilation
Vyper has its own online code editor and compiler, which allows you to write and then compile your smart contracts into bytecode, ABI, and LLL using only your web browser. 

## Reading and Writing Data
Smart contracts can write data to two places:

>Global state: 
The state variables in a given smart contract are stored in Ethereum’s global state trie; a smart contract can only store, read, and modify data in relation to that particular contract’s address (i.e., smart contracts cannot read or write to other smart contracts).

>Logs: 
A smart contract can also write to Ethereum’s chain data through log events. While Vyper initially employed the __log__ syntax for declaring these events, an update has been made that brings its event declaration more in line with Solidity’s original syntax.


