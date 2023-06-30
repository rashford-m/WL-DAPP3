// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Whitelist.sol";

contract CryptoDevs is ERC721Enumerable, Ownable {
 //  _price is the price of one Crypto Dev NFT
 uint256 constant public _price = 0.01 ether;

 // Max number of CryptoDevs that can ever exist
 uint256 constant public maxTokenIds = 20;

 // Whitelist contract instance
 Whitelist whitelist;

  // Number of tokens reserved for whitelisted members
  uint256 public reservedTokens;
  uint256 public reservedTokensClaimed = 0;
}