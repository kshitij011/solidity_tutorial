//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

library safeMath{
    function add(uint x, uint y, uint q)internal pure returns(uint){
        uint z = x + y + q;
        return z;
    }
}

//add, subtract, division, multiply
contract testSafeMath{
    using safeMath for uint;


    function testAdd(uint x, uint y, uint q)public pure returns(uint){
        x = x.add(x,x); //the value will be tripled for x.
        return q.add(x,y); //tripled value of x + y + z
    }
}