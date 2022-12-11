# Smart Contracts and Vyper
Vyper is an experimental, contract-oriented programming language for the Ethereum Virtual Machine that strives to provide superior auditability, by making it easier for developers to produce intelligible code. In fact, one of the principles of Vyper is to make it virtually impossible for developers to write misleading code.

## Vulnerabilities and Vyper
This section shows there are three basic categories of trace vulnerabilities:

>Suicidal contracts: 
Smart contracts that can be killed by arbitrary addresses

>Greedy contracts: 
Smart contracts that can reach a state in which they cannot release ether

>Prodigal contracts: 
Smart contracts that can be made to release ether to arbitrary addresses

## Comparison to Solidity
Vyper tries to make unsafe code harder to write by deliberately omitting some of Solidity’s features. It is important for those considering developing smart contracts in Vyper to understand what features Vyper does not have, and why. 

## Modifiers
This section uses images to show how solidity allows modifiers to be written.

## Class Inheritance
This section explains how Inheritance allows programmers to harness the power of prewritten code by acquiring preexisting functionality, properties, and behaviors from existing software libraries. Inheritance is powerful and promotes the reuse of code. 

## Inline Assembly
This gives developers low-level access to the Ethereum Virtual Machine, allowing Solidity programs to perform operations by directly accessing EVM instructions.

## Function Overload
Function overloading allows developers to write multiple functions of the same name. Which function is used on a given occasion depends on the types of the arguments supplied.

## Infinite Loop
Vyper doesn’t permit you to write the processing and has the following three features:

>The while statement: 
you can use while statement in Solidity, but Vyper doesn’t have the statement.

>Deterministic number of iterations of for statement: 
Vyper has a for statement, but the upper limit of the number of iterations must be determinate, and range () can only accept integer literals.

>Recursive calling: 
Recursive calling can be written in Solidity, but not in Vyper.

## Preconditions and Postconditions
Vyper handles preconditions, postconditions, and state changes explicitly. While this produces redundant code, it also allows for maximal readability and safety. 

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

## Function and Variable Ordering 
This section uses images and code snippets to explain how each individual Vyper smart contract consists of a single Vyper file only. In other words, all of a given Vyper smart contract’s code, including all functions, variables, and so forth, exists in one place.

## Reading and Writing Data
Smart contracts can write data to two places:

>Global state: 
The state variables in a given smart contract are stored in Ethereum’s global state trie; a smart contract can only store, read, and modify data in relation to that particular contract’s address (i.e., smart contracts cannot read or write to other smart contracts).

>Logs: 
A smart contract can also write to Ethereum’s chain data through log events. While Vyper initially employed the __log__ syntax for declaring these events, an update has been made that brings its event declaration more in line with Solidity’s original syntax. For example, Vyper’s declaration of an event called MyLog was originally MyLog: __log__({arg1: indexed(bytes[3])}). The syntax has now become MyLog: event({arg1: indexed(bytes[3])}). It is important to note that the execution of the log event in Vyper was, and still is, as follows: log.MyLog("123").



