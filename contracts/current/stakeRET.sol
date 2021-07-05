// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/*
*@dev: This is a stake contact that allows NFT staking against
*@dev: receiving ERC20 against the NFT.
*
*/
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol"
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/AccessControl.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";


//stake NFT
//creditERC20 to your Address - AFTER you confirm that NFT is stakeD
//Use the ERC20 Liquidity/Governance token.



//@dev: uncomment these or use with openzeppelin on trufle
//import "@openzeppelin/contracts/token/ERC20/ERC20.sol"
//import "@openzeppelin/contracts/utils/Pausable.sol";
//import "@openzeppelin/contracts/utils/Counters.sol";
//import "@openzeppelin/contracts/access/AccessControl.sol";

contract stakeRET is ERC20, IERC20, ERC20Burnable, IERC721, Pausable, AccessControl {

  bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
  bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

//@dev: RET stands for Real Estate Token
//@dev: SRT stands for Staking R(E)T
//declare the events here.
/**
* RET= Real Estate Token
* SRT= Stakingg R(E)T
* declaring the events we need for registering with other smart contracts and the frontend.
*/


event stakeRET-
event unstakeRET-
event ERC20mint-
event ERC20withdraw?


constructor() ERC20("stakeRET", "SRT") {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(PAUSER_ROLE, msg.sender);
        _mint(msg.sender, 50000 * 10 ** decimals());
        _setupRole(MINTER_ROLE, msg.sender);
    }

    /**
    * Setting up the structs we need for the functions
    */

struct RETCollateral {
  uint256 valuation; //@dev this should be the valuation off the RealEstateNFT from ChainlinkClient
  uint256 collateralTimeStamp; //usee this as a security check in the minting.
  uint256 ERC20stake;  //@dev: nunmber of ERC 20 tokens given to you for the NFTs
}

//@dev: This holds the NFT data from the NFT contract.
  struct RETStake {
    address ownerAddress; // This holds the address of the owner of the ERC721
    address tokenAddress; //This holds the address of the ERC721 real Estate contract is deployed to-
    uint256 tokenId; //this is the number of the token
  }

  uint256 numRETStakes;
  mapping (uint => RETStake) RETStakes;


//
//mapping (address => mapping(uint256 => RealEstateTokenCollateral)) public CollateralList;


/**
* administratively pause and unpause the contract.
*/

function pause() public {
    require(hasRole(PAUSER_ROLE, msg.sender));
    _pause();
}

function unpause() public {
    require(hasRole(PAUSER_ROLE, msg.sender));
    _unpause();
}


//need to set up the requirements for this
function stakeRET (address ownerAddress, address tokenAddress, uint256 tokenId) public view returns {
  //event needed
  require(msg.sender == RealEstateTokenEntry(ownerAddress), 'you do not own this RET');
  _stakeRET(numRETEntrys)
  action //check from OpenZeppelin appropriate actions.

}

//requirements for this as well.
function unstakeRET (address ownerAddress, address tokenAddress, uint256 tokenId) public view returns {
  require
  action
}

function mint(address to, uint256 amount) public external payable onlyOwner {
    require(hasRole(MINTER_ROLE, msg.sender));
    _mint(to, amount);
}

function _beforeTokenTransfer(address from, address to, uint256 amount)
    internal
    whenNotPaused
    override
{
    super._beforeTokenTransfer(from, to, amount);
}


}
