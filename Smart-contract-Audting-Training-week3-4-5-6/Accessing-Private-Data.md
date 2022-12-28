# Solidity Attack Vectors: #4 - Accessing Private Data

Welcome to the fourth article in this series, if you haven't read the previous articles where i wrote about some other attack vectors in solidity smart contracts, please do well to check them out.

## Lets talk about "private" data

In this article our focus is on "Accessing Private Data" on-chain. Its normal to think that when a state variable is marked "private" that the variable is completely private and hidden from external sources. However, that is not the case. Since Ethereum is a public blockchain nothing is hidden or private to anyone. using the "private" keyword only tells the blockchain that that variable shouldn't be accessible to other contracts, whether through inheritance or calls. So if you were to store a secret or very important information on the blockchain through a smart contract. It can be exploited and the data accessed.

## How are data stored?

Before going into the vulnerability aspect, i will give a very brief example on how data is stored in smart contracts on the blockchain and then i will show an example on how to retrieve that data, this data will be private.

Variables in solidity are stored in storage locations called "slot", ranging from slot "zero" to slot 2\*\*256-1, very big right?. So if a state variable `uint256 numOneSlotZero` is the first declared variable in a smart contract, it takes up slot zero of that smart contract's storage on the blockchain and if another "uint256" variable is declared it takes on the next slot(slot one), and so on and so forth. Note that storage slots can also be shared by variables and some reference type variables have different storage mechanisms, but we won't be going into that as its not the aim of this article.

Having introduced slots and storage locations, lets take a look at this smart contract that stores an important private "uint256" variable.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract AccessingPrivateData {
    uint256 private verySecretNumber; //first variable ==> slot 0
    address owner; //second variable ==> slot 1

    constructor(uint256 _verySecretNumber) {
        verySecretNumber = _verySecretNumber;
        owner = msg.sender;
    }

    function viewSecretNumber() external view returns (uint256) {
        require(msg.sender == owner);
        return verySecretNumber;
    }
}
```

The above contract stores a very secret number and has a function that can only be called by the owner of the contract to view that secret number. You might think that this is safe and the number is only known by the contract owner. But, like i said before, Ethereum is a public blockchain and nothing is really private.

Now, lets see a demo how i can use hardhat to access that private secret number even without being the owner.

```ts
import { ethers } from "hardhat";

async function main() {
  const PrivateDataContract = await ethers.getContractFactory(
    "AccessingPrivateData"
  );

  const privateDataContract = await PrivateDataContract.deploy(120); //our secret number is 120
  let privateData = await ethers.provider.getStorageAt(
    privateDataContract.address,
    0
  );
  console.log(parseInt(privateData));
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
```

using hardhat typescript, we import "ethers" and use the `provider.getStorageAt` method to read the storage of the private data in the smart contract which returns the hex value of our data, we then use javascript `parseInt()` function to convert the value back to a number and print it to the console. You can run the script in hardhat by using the following command:

```shell
npx hardhat run scripts/your_script_name.ts
```

After this command is ran, we get the following result on our console:

```shell
> 120
```

Woah! now we see even though this was a private data it can still be read by external sources.

## How to prevent this?

One simple way to prevent your private data from being accessed by people is by not storing it on-chain. You can have it written somewhere safe, stored on your computer or any secured means that is off-chain.

Now, this marks the end of this article. I hope you learnt something, see you in the next one.
