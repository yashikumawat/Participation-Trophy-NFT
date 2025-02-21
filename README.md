# Participation-Trophy-NFT

This project is a simple Solidity smart contract that allows participants to mint NFTs as proof of participation in an event. The contract follows the ERC721 standard for Non-Fungible Tokens (NFTs).

## Features

- **Mint NFTs for Event Participation**: Participants can mint a unique NFT each time they join an event.
- **ERC721 Standard**: The contract follows the ERC721 standard, ensuring that the minted tokens are compliant with common NFT platforms.
- **No Inputs Required**: The contract is designed to mint NFTs without requiring any input parameters during the deployment or minting process.
- **Track NFT Ownership**: The contract tracks ownership of each NFT and allows users to query how many tokens they own and their specific token IDs.

## How It Works

1. **Minting an NFT**: Participants can mint a new NFT by simply calling the `mintNFT()` function. This will assign them a unique token ID and store it in the contract.
2. **Token Ownership**: Each minted NFT is associated with the participant's address and can be queried via `ownerOf()` and `tokensOfOwner()` functions.
3. **Event Logging**: The `NFTMinted` event is triggered every time an NFT is successfully minted, logging the owner's address and token ID.

## Deployed Contract Address

The smart contract has been deployed on the Edu Chain. You can interact with it at the following address:

**Contract Address**: `0xB18aFa8bC140ab9834E4ecf7d799dC15fe172812`

## How to Use

### Interacting with the Contract

You can interact with the deployed contract using any Ethereum-compatible wallet like MetaMask, or via a web3 interface (like Remix IDE or a custom dApp).

### Mint an NFT

To mint a new NFT, simply call the `mintNFT()` function. You don’t need to pass any arguments. The smart contract will automatically assign a new token ID to your address.

### Check Your NFTs

- To check how many NFTs you own, use the `balanceOf()` function.
- To see the specific NFTs owned, use `tokenOfOwnerByIndex()` and provide the index of the token you're interested in.

## Contract Functions

### `mintNFT()`
- **Description**: Mints a new NFT for the caller.
- **No input** required.

### `balanceOf(address owner) public view returns (uint256)`
- **Description**: Returns the number of NFTs owned by the address.
  
### `tokenOfOwnerByIndex(address owner, uint256 index) public view returns (uint256)`
- **Description**: Returns the token ID at the given index for the specified owner.

## Example

Here’s an example of how you would call the `mintNFT()` function:

```solidity
// In MetaMask or Remix IDE
contractInstance.methods.mintNFT().send({ from: 'your-ethereum-address' });
