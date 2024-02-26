# CryptoPoops

CryptoPoops is a non-fungible token (NFT) contract implemented on the blockchain platform. It allows users to create, deposit, withdraw, and manage unique digital assets known as CryptoPoops.

## Overview

This contract extends the `NonFungibleToken` standard and provides functionalities for handling CryptoPoops NFTs. Each CryptoPoop NFT has attributes including a name, favorite dish, and a magic number associated with it.

## Features

- **Creation**: Users can create new CryptoPoop NFTs with specified attributes.
- **Depositing and Withdrawing**: NFTs can be deposited into and withdrawn from collections.
- **Collections**: Users can manage collections of CryptoPoop NFTs, including borrowing and accessing specific NFTs within a collection.
- **Minting**: The contract includes a minter role for creating new CryptoPoop NFTs.

## Usage

To interact with the CryptoPoops contract, users can utilize various methods such as creating NFTs, depositing them into collections, and accessing specific NFTs within collections.

### Creating NFTs

To create a new CryptoPoop NFT, users can call the `createNFT` function provided by the `Minter` role.

### Depositing and Withdrawing NFTs

NFTs can be deposited into collections using the `deposit` function. Conversely, users can withdraw NFTs from collections using the `withdraw` function.

### Managing Collections

Users can manage collections of CryptoPoop NFTs by creating empty collections and performing operations such as getting IDs of NFTs in a collection, borrowing NFTs, and accessing authenticated NFTs.
