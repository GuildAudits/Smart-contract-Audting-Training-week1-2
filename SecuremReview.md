# Secureum 201 Review

## 1. Contract Types
Contract types are of three types, namely:
* Abstract Contract - Contract needs to be marked abstract when at least one function in the contract is not implemented. It cannot be deployed by itself but can be inherited by other contract.
* Interfaces - They cannot have any functions implemented. Interfaces cannot inherit from other contract but can inherit from other interfaces, all declare functions must be external, the cannot declare constructor and cannot have state variables. They use the interface keyword.
* Libraries - They serve as a reusable contract for other implementations, A non deployed contract only have internal function visibility all through. Libraries are deployed ones to a specific address and their code is reused using the DELEGATECALL opcode. This means that if library functions are called, their code is executed in the context of the calling contract. They use the library keyword.

## 2. State Variable Shadowing
This is considered as an error. A derived contract can only declare a state variable x, if there is no visible state variable with the same name in any of its bases. which means if an inherited contract have similar variable name, it will be considered an error.

## 3. Function Overriding Changes
The overriding function may only change the visibility of the overridden function from external to public. The mutability may be changed to a more strict one following the order: nonpayable can be overridden by view and pure. view can be overridden by pure. payable is an exception and cannot be changed to any other mutability.

## 4. Virtual Functions
Functions without implementation have to be marked virtual outside of interfaces. In interfaces, all functions are automatically considered virtual. Functions with private visibility cannot be virtual.

## 5. Base Constructors
The constructors of all the base contracts will be called following the linearization rules. If the base constructors have arguments, derived contracts need to specify all of them either in the inheritance list or in the derived constructor.

