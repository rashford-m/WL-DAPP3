// SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Whitelist.sol";

contract CryptoDevs is ERC721Enumerable, Ownable {
    //  _price is the price of one Crypto Dev NFT
    uint256 public constant _price = 0.01 ether;

    // Max number of CryptoDevs that can ever exist
    uint256 public constant maxTokenIds = 20;

    // Whitelist contract instance
    Whitelist whitelist;

    // Number of tokens reserved for whitelisted members
    uint256 public reservedTokens;
    uint256 public reservedTokensClaimed = 0;

    /**
     * @dev ERC721 constructor takes in a `name` and a `symbol` to the token collection.
     * name in our case is `Crypto Devs` and symbol is `CD`.
     * Constructor for Crypto Devs takes in the baseURI to set _baseTokenURI for the collection.
     * It also initializes an instance of whitelist interface.
     */

    constructor(address whitelistContract) ERC721("Crypto Devs", "CD") {
        whitelist = Whitelist(whitelistContract);
        reservedTokens = whitelist.maxWhitelistedAddresses();
    }
    function mint() public payable {
        
    }
}
