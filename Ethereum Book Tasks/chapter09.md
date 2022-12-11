# Smart Contract Security
This chapter deep dives into Smart Contract Security showing how Security is one of the most important considerations when writing smart contracts. In the field of smart contract programming, mistakes are costly and easily exploited.

## Security Best Practices
This section explains Defensive programming as a style of programming that is particularly well suited to smart contracts. It emphasizes the following, all of which are best practices:

>Minimalism/simplicity: 
Complexity is the enemy of security. The simpler the code, and the less it does, the lower the chances are of a bug or unforeseen effect occurring. When first engaging in smart contract programming, developers are often tempted to try to write a lot of code. Instead, you should look through your smart contract code and try to find ways to do less, with fewer lines of code, less complexity, and fewer "features." If someone tells you that their project has produced "thousands of lines of code" for their smart contracts, you should question the security of that project. Simpler is more secure.

>Code reuse: 
Try not to reinvent the wheel. If a library or contract already exists that does most of what you need, reuse it. Within your own code, follow the DRY principle: Don’t Repeat Yourself. If you see any snippet of code repeated more than once, ask yourself whether it could be written as a function or library and reused. Code that has been extensively used and tested is likely more secure than any new code you write. Beware of “Not Invented Here” syndrome, where you are tempted to "improve" a feature or component by building it from scratch. The security risk is often greater than the improvement value.

>Code quality: 
Smart contract code is unforgiving. Every bug can lead to monetary loss. You should not treat smart contract programming the same way as general-purpose programming. Writing DApps in Solidity is not like creating a web widget in JavaScript. Rather, you should apply rigorous engineering and software development methodologies, as you would in aerospace engineering or any similarly unforgiving discipline. Once you "launch" your code, there’s little you can do to fix any problems.

>Readability/auditability: 
Your code should be clear and easy to comprehend. The easier it is to read, the easier it is to audit. Smart contracts are public, as everyone can read the bytecode and anyone can reverse-engineer it. Therefore, it is beneficial to develop your work in public, using collaborative and open source methodologies, to draw upon the collective wisdom of the developer community and benefit from the highest common denominator of open source development. You should write code that is well documented and easy to read, following the style and naming conventions that are part of the Ethereum community.

>Test coverage: 
Test everything that you can. Smart contracts run in a public execution environment, where anyone can execute them with whatever input they want. You should never assume that input, such as function arguments, is well formed, properly bounded, or has a benign purpose. Test all arguments to make sure they are within expected ranges and properly formatted before allowing execution of your code to continue.

## Security Risks and Antipatterns
This section shows the verious vunrebilities in smart contracts:

## Reentrancy
One of the features of Ethereum smart contracts is their ability to call and utilize code from other external contracts. Contracts also typically handle ether, and as such often send ether to various external user addresses. These operations require the contracts to submit external calls. These external calls can be hijacked by attackers, who can force the contracts to execute further code (through a fallback function), including calls back into themselves.

## The Vulnerability
This type of attack can occur when a contract sends ether to an unknown address. An attacker can carefully construct a contract at an external address that contains malicious code in the fallback function. Thus, when a contract sends ether to this address, it will invoke the malicious code.
The rest of the section uses code snipets and images to further explain

## Arithmetic Over/Underflows
The Ethereum Virtual Machine specifies fixed-size data types for integers. This means that an integer variable can represent only a certain range of numbers. 

## The Vulnerability
An over/underflow occurs when an operation is performed that requires a fixed-size variable to store a number (or piece of data) that is outside the range of the variable’s data type.
The rest of the section uses code snipets and images to further explain

## Unexpected Ether
Typically, when ether is sent to a contract it must execute either the fallback function or another function defined in the contract. There are two exceptions to this, where ether can exist in a contract without having executed any code.

## External Contract Referencing
One of the benefits of the Ethereum “world computer” is the ability to reuse code and interact with contracts already deployed on the network. As a result, a large number of contracts reference external contracts, usually via external message calls.

## The Vulnerability
In Solidity, any address can be cast to a contract, regardless of whether the code at the address represents the contract type being cast.
The rest of the section uses code snipets and images to further explain

## Real World Examples
The rest of the chapter is used to learn about Real-World Examples of exploitations like 
>Reentrancy Honey Pot
>GovernMental

