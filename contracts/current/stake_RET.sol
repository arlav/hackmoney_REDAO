// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

/*
*@dev: This is a stake contact that allows NFT staking against
*@dev: receiving ERC20 against the NFT.
*
*/
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/token/ERC20/IERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/token/ERC721/IERC721.sol"
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/utils/Pausable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/utils/Counters.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/access/AccessControl.sol";

//IERC20 - //and potnetially the IERC721
//contract  supports ERC-165, i.e receiving ERC721 tokens - we need to make sure we implement this so that
//we do not get any trapped tokes.


//@dev: uncomment these or use with openzeppelin on trufle
//import "@openzeppelin/contracts/token/ERC20/ERC20.sol"
//import "@openzeppelin/contracts/utils/Pausable.sol";
//import "@openzeppelin/contracts/utils/Counters.sol";
//import "@openzeppelin/contracts/access/AccessControl.sol";

contract stakeRET is Ownable, Pausable, ERC20, IERC20, IERC721 {

  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

//
event stakeRET-
event unstakeRET-
event ERC20mint-

struct RealEstateTokenCollateral {
  uint256 valuation; //@dev this should be the valuation off the RealEstateNFT from ChainlinkClient
  uint256 collateralTimeStamp;
  uint256 ERC20stake;  //@dev: nunmber of ERC 20 tokens given tou for the NFTs
}

//@dev: This holds the NFT data from the NFT contract.
  struct RealEstateTokenEntry {
    address ownerAddress; // This holds the address of the owner of the ERC721
    address tokenAddress; //This holds the address of the ERC721 real Estate contract is deployed to-
    uint256 tokenId; //this is the number of the token
  }

//mapping one lender



mapping (address => mapping(uint256 => RealEstateTokenCollateral)) public CollateralList;

function stakeRET (address ownerAddress, address tokenAddress, uint256 tokenId) public view returns {
  //event needed
  require
  action

}
function unstakeRET (address ownerAddress, address tokenAddress, uint256 tokenId) public view returns {
  require
  action
}

function mintERC20 () public view {
  require //equation that mints a nunmber of erc20 for the value of the erc721

}







}
