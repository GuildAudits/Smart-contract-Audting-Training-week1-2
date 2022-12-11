# Secureum Topics Review
This is a review on five topics in Secureum 201

## Virtual Functions
This shows how in Solidity Functions without implementation have to be marked virtual outside of interfaces, also how all functions are in interfaces automatically considered virtual and how functions with private visibility cannot be virtual.

## EVM Memory
This section explains how EVM memory is linear and can be addressed at byte level and accessed with MSTORE/MSTORE8/MLOAD instructions and all locations in memory are initialized as zero.

## Memory Layout
This section dives deep into the memory layout explaining how new memory objects in solidity are placed at the free memory pointer and memory is never freed and the free memory pointer points to 0x80 initially.

## EVM Storage
This explains how in the EVM, Storage is a key-value store that maps 256-bit words to 256-bit words and is accessed with EVM’s SSTORE/SLOAD instructions. and all locations in storage are initialized as zero

## Modifier Overriding
This section explains how function modifiers in solidity can override each other and how it works in the same way as function overriding. The virtual keyword must be used on the overridden modifier and the override keyword must be used in the overriding modifier
