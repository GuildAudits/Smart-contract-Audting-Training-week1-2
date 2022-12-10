# Governor

On-chain governance, the method by which this community makes decisions, has emerged as a key element of decentralised protocols. It drives a variety of choices, including parameter tuning, smart contract upgrades, integrations with other protocols, treasury management, grants, etc.

The "Governor" special-purpose contract often implements this governance mechanism. Despite the fact that projects with different requirements have had to fork the code to customise it for their needs, the GovernorAlpha and GovernorBravo contracts created by Compound have been very successful and well-liked so far. However, this can come with a high risk of introducing security issues.


Using Solidity inheritance, OpenZeppelin Contracts should create a modular system of Governor contracts that may suit various requirements without the need for forking. the most typical specifications in OpenZeppelin Contracts, Additionally, OpenZeppelin Governor's design results in less storage usage and more gas-efficient functioning.



## [GovernorToken](https://github.com/AnandK-2024/Smart-contract-Audting-Training-/blob/Anand_Developer/Secureum201/Governor/governorToken.sol)

The voting power of each account in our governance setup will be determined by an ERC20 token. 
The ERC20Votes extension must be implemented by the token. In order to prevent repeated voting, this addition will maintain track of prior balances. This will allow voting power to be derived from earlier snapshots rather than the current balance.


## [TimeLock](https://github.com/AnandK-2024/Smart-contract-Audting-Training-/blob/Anand_Developer/Secureum201/Governor/Timelock.sol)

This enables users to leave the application before a decision is carried out if they disagree with it. Together with the GovernorTimelockControl module, we'll be using OpenZeppelin's TimelockController.
When using a timelock, the timelock will carry out proposals, thus all funds, ownership, and access control roles should be kept in the timelock.




The Executor role is responsible for carrying out already-available activities; it can be assigned to the special zero address to enable execution by anyone (if operations can be particularly time sensitive, the Governor should be made Executor instead).

Last but not least, there is the Admin role, which has the power to grant and revoke the two previous roles. This is a very sensitive role that will be automatically granted to the timelock itself and, optionally, to a second account, which can be used for convenience during setup but should immediately renounce the role.


## Create a Proposal

 This proposal will consist of a single action where the target is the ERC20 token, calldata is the encoded 
 function call `transfer(< team wallet >, < grant amount >)`, and with 0 ETH attached.
  
-----------------















The targets array, values array, calldatas array, and descriptionHash are hashed together to create the proposal id (bytes32 which itself is the keccak256 hash of the description string). The proposal data included in the ProposalCreated event can be used to generate this proposal id. Even before the proposal is presented, it can be calculated.

Keep in mind that the computation of the proposal id does not include the chainId or the governor address. As a result, if the same request is submitted to numerous governors across various networks with the same action and description, it will have the same id. This also implies that the proposer will have to alter the description in order to perform the same operation twice (on the same governor).
