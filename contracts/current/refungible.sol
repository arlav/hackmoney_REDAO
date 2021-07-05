// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol"
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/AccessControl.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";


contract refungibleNFT is ERC20, IERC20, ERC20Burnable, IERC721, Pausable, AccessControl {


    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");


uint public icoSharePrice;
uint public icoShareSupply;
uint public icoEnd;
address public admin;


//@dev: This holds the NFT data from the NFT contract.
  struct RETStake {
    address ownerAddress; // This holds the address of the owner of the ERC721
    address tokenAddress; //This holds the address of the ERC721 real Estate contract is deployed to-
    uint256 tokenId; //this is the number of the token
  }

}
