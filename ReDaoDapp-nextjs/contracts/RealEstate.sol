// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/token/ERC721/ERC721.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/security/Pausable.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/utils/Counters.sol";
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v4.2/contracts/access/AccessControl.sol";


contract RealEstate is ERC721, Pausable, AccessControl {
    using Counters for Counters.Counter;

    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    Counters.Counter private _tokenIdCounter;

    mapping (uint256 => string) public _tokenURIs;

    constructor() ERC721("RealEstate", "RET") {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(PAUSER_ROLE, msg.sender);
        _setupRole(MINTER_ROLE, msg.sender);
    }
    function mint(address _to, uint256 _tokenId, string memory tokenURI_) external {
        require(hasRole(MINTER_ROLE, msg.sender), 'You do not have minting privileges');
            _mint(_to, _tokenId);
            _setTokenURI(_tokenId, tokenURI_);
    }
    function _setTokenURI(uint256 tokenId, string memory _tokenURI) internal virtual {
        require(_exists(tokenId), "ERC721Metadata: URI set of nonexistent token");
        _tokenURIs[tokenId] = _tokenURI;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        string memory _tokenURI = _tokenURIs[tokenId];
        string memory base = _baseURI();
        
        // Concatenate the baseURI and tokenURI (via abi.encodePacked).
        if (bytes(_tokenURI).length > 0) {
            return string(abi.encodePacked(base, _tokenURI));
        }
    }
    function pause() public {
        require(hasRole(PAUSER_ROLE, msg.sender));
        _pause();
    }

    function unpause() public {
        require(hasRole(PAUSER_ROLE, msg.sender));
        _unpause();
    }

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://";
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721, AccessControl)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }
}


/*
IPFS CID's
Property 1 : Qmbar4ydc8YR1CF8QQmR2XiXdYxT3X9dcncqBkX5VHNxKH
Property 2 : QmPigmJHmHs1QfKbvk1drsNCjyfZf3hbMLjMwH9JLr7aLL
Property 3 : QmcRg7hvdxD5UQFsncz2conCmcfeiJWeCCEWpvxM4rzNG1

address : 0xBb604479B2151f3C72a7456873Fdb90f81B676C3

let nft = await RealEstate.deployed()
await nft.name()
await nft.symbol()
await nft.mint('0xBb604479B2151f3C72a7456873Fdb90f81B676C3', 1, 'Qmbar4ydc8YR1CF8QQmR2XiXdYxT3X9dcncqBkX5VHNxKH')
await nft.mint('0xBb604479B2151f3C72a7456873Fdb90f81B676C3', 2, 'QmPigmJHmHs1QfKbvk1drsNCjyfZf3hbMLjMwH9JLr7aLL')
nft.tokenURI(1)
nft.tokenURI(2)
*/