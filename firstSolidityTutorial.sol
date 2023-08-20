//SPDX-License-Identifier: GPL-3.0

// compiler version
pragma solidity >=0.7.0 <0.9.0;

contract firstSolidityTutorial{

    uint public var1; //minimum value of uint is 0
    uint public var2;
    uint public sum;

    function set(uint x, uint y) public{
        var1 = x;
        var2 = y;
        sum = var1 + var2;
    }

    function get() public view returns(uint){
        return sum;
    }
}