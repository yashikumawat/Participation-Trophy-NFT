// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventNFT {
    // The name and symbol for the token
    string public name = "EventParticipationNFT";
    string public symbol = "EPNFT";

    // Track the total number of NFTs minted
    uint256 public totalSupply = 0;

    // Mapping from token ID to owner address
    mapping(uint256 => address) public ownerOf;
    
    // Mapping from owner address to the list of owned token IDs
    mapping(address => uint256[]) public tokensOfOwner;

    // Event to log when a new NFT is minted
    event NFTMinted(address indexed owner, uint256 indexed tokenId);

    // Mint a new NFT for event participation
    function mintNFT() public {
        uint256 tokenId = totalSupply;
        totalSupply += 1;
        
        ownerOf[tokenId] = msg.sender;
        tokensOfOwner[msg.sender].push(tokenId);

        emit NFTMinted(msg.sender, tokenId);
    }

    // Get the total number of tokens owned by an address
    function balanceOf(address owner) public view returns (uint256) {
        return tokensOfOwner[owner].length;
    }

    // Get the token ID at a given index for an address
    function tokenOfOwnerByIndex(address owner, uint256 index) public view returns (uint256) {
        require(index < tokensOfOwner[owner].length, "Index out of bounds");
        return tokensOfOwner[owner][index];
    }
}
