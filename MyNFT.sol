pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    uint256 token_count;

    constructor() ERC721("My NFT", "MNFT") {}

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        return "https://ipfs.io/ipfs/TUHASHAQUI";
    }

    function mintNFT(address to) public
    {
        token_count  += 1;
        _mint(to, token_count);
    }
}