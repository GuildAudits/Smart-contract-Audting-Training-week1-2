# Consensus
Throughout this book we have talked about "consensus rules”—the rules that everyone must agree to for the system to operate in a decentralized, yet deterministic, manner.
When it comes to the core function of decentralized record keeping and verification, it can become problematic to rely on trust alone to ensure that information derived from state updates is correct. This rather general challenge is particularly pronounced in decentralized networks because there is no central entity to decide what is true.

## Consensus via Proof of Work
The creator of the original blockchain, Bitcoin, invented a consensus algorithm called proof of work (PoW). Arguably, PoW is the most important invention underpinning Bitcoin. The colloquial term for PoW is "mining," which creates a misunderstanding about the primary purpose of consensus.

## Consensus via Proof of Stake (POS)
In some respects, proof of work was invented as an alternative to proof of stake. Following the success of Bitcoin, many blockchains have emulated proof of work. Yet the explosion of research into consensus algorithms has also resurrected proof of stake, significantly advancing the state of the technology. 

## Ethash: Ethereum’s Proof-of-Work Algorithm
Ethash is the Ethereum PoW algorithm. It uses an evolution of the Dagger–Hashimoto algorithm, which is a combination of Vitalik Buterin’s Dagger algorithm and Thaddeus Dryja’s Hashimoto algorithm. Ethash is dependent on the generation and analysis of a large dataset, known as a directed acyclic graph (or, more simply, “the DAG”).

## Casper: Ethereum’s Proof-of-Stake Algorithm
Casper is the proposed name for Ethereum’s PoS consensus algorithm. It is still under active research and development and is not implemented on the Ethereum blockchain at the time of publication of this book.

## Principles of Consensus
The principles and assumptions of consensus algorithms can be more clearly understood by asking a few key questions:

>Who can change the past, and how? (This is also known as immutability.)

>Who can change the future, and how? (This is also known as finality.)

>What is the cost to make such changes?

>How decentralized is the power to make such changes?

>Who will know if something has changed, and how will they know?

## Controversy and Competition
The entire blockchain industry is one giant experiment where these questions will be tested under adversarial conditions, with enormous monetary value at stake. In the end, history will answer the controversy.


