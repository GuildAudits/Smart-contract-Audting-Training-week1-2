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
  
  
## Cast a Vote

Delegates can vote on a proposal once it is open for discussion. It should be noted that delegates hold the authority to vote; if a token holder wants to participate, they can nominate a dependable person to act as their delegate or they can exercise their right to vote and become a delegate themselves.

## Execute the Proposal

The proposal is deemed successful and can move on with execution if quorum was reached (enough voting power participated) and the majority voted in favour. The "Administration Panel" portion of a project in Tally also has a place for this.

Queuing is the first stage of execution if a timelock was established. As contrast to only requiring the proposal id, the queue and execute functions both want the full set of proposal parameters. This is essential since, in an effort to conserve gas, this data is not kept on a chain. Keep in mind that these parameters are always present in the events that the contract emits. The description is the sole parameter that is not supplied in its whole because it is only required in its hashed form to determine the proposal id.


    hashProposal(address[] targets, uint256[] values, bytes[] calldatas, bytes32 descriptionHash) → uint256















The targets array, values array, calldatas array, and descriptionHash are hashed together to create the proposal id (bytes32 which itself is the keccak256 hash of the description string). The proposal data included in the ProposalCreated event can be used to generate this proposal id. Even before the proposal is presented, it can be calculated.


