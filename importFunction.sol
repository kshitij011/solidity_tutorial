//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract skToken is ERC20{

    constructor() public ERC20("Legal","Ltoken"){
        _mint(msg.sender, 100000*(10**uint256(decimals())));
    }
}