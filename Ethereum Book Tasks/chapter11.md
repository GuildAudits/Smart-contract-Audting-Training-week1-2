# Oracles
In this chapter we discuss oracles, which are systems that can provide external data sources to Ethereum smart contracts.

## Why Oracles Are Needed
A key component of the Ethereum platform is the Ethereum Virtual Machine, with its ability to execute programs and update the state of Ethereum, constrained by consensus rules, on any node in the decentralized network. In order to maintain consensus, EVM execution must be totally deterministic and based only on the shared context of the Ethereum state and signed transactions.

## Oracle Use Cases and Examples
This section explains how Oracles, ideally, provide a trustless (or at least near-trustless) way of getting extrinsic (i.e., "real-world" or off-chain) information, such as the results of football games, the price of gold, or truly random numbers, onto the Ethereum platform for smart contracts to use.

Some more examples of data that might be provided by oracles include:

>Random numbers/entropy from physical sources such as quantum/thermal processes: e.g., to fairly select a winner in a lottery smart contract

>Parametric triggers indexed to natural hazards: e.g., triggering of catastrophe bond smart contracts, such as Richter scale measurements for an earthquake bond

>Exchange rate data: e.g., for accurate pegging of cryptocurrencies to fiat currency

>Capital markets data: e.g., pricing baskets of tokenized assets/securities

>Benchmark reference data: e.g., incorporating interest rates into smart financial derivatives

>Static/pseudostatic data: security identifiers, country codes, currency codes, etc.

>Time and interval data: for event triggers grounded in precise time measurements

>Weather data: e.g., insurance premium calculations based on weather forecasts

>Political events: for prediction market resolution

>Sporting events: for prediction market resolution and fantasy sports contracts

>Geolocation data: e.g., as used in supply chain tracking

>Damage verification: for insurance contracts

>Events occurring on other blockchains: interoperability functions

>Ether market price: e.g., for fiat gas price oracles

>Flight statistics: e.g., as used by groups and clubs for flight ticket pooling

## Oracle Design Patterns

All oracles provide a few key functions, by definition. These include the ability to:

>Collect data from an off-chain source.

>Transfer the data on-chain with a signed message.

>Make the data available by putting it in a smart contract’s storage.

Once the data is available in a smart contract’s storage, it can be accessed by other smart contracts via message calls that invoke a "retrieve" function of the oracle’s smart contract.

## Data Authentication
Authenticity proofs are cryptographic guarantees that data has not been tampered with. Based on a variety of attestation techniques (e.g., digitally signed proofs), they effectively shift the trust from the data carrier to the attestor (i.e., the provider of the attestation). By verifying the authenticity proof on-chain, smart contracts are able to verify the integrity of the data before operating upon it.

## Computation Oracles
So far, we have only discussed oracles in the context of requesting and delivering data. However, oracles can also be used to perform arbitrary computation, a function that can be especially useful given Ethereum’s inherent block gas limit and comparatively expensive computation costs.

The rest of the chapter uses code snipets and images to further explain Oracles.
