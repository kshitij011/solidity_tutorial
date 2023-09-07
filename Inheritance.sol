//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract A{
    function fun() public pure virtual returns(string memory){
        return "A";
    }
}

contract B is A{
    function fun() public pure virtual override returns(string memory){
        return "B";
    }

    // function callInheritance() public pure {
    //     fun();
    // }
}