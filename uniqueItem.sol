// SPDX-License-Identifier: MIT
//pragma solidity ^0.6.0;
pragma solidity >=0.4.22 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";

contract uniqueAsset is ERC721URIStorage{
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    //Indexing data

    mapping(string => uint8) hashes;

    uint256 public _currentTime;

    constructor() public ERC721("UniqueAsset1", "UNA1"){}
    //NFT name and symbol passed in the constructor

    function awardItem(address recipient, string calldata hash, string calldata metadata)
    public returns (uint256){
        //NFT is associated with a hash
        //checks if NFT is already created or not
        require(hashes[hash] != 1);
        hashes[hash] =1;
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _currentTime = block.timestamp;

        _mint(recipient,newItemId);
        _setTokenURI(newItemId, metadata);
        return newItemId;

    }
}