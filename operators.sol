//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract operators{
    // arithematic operators
    // '+','-','*','/'
    uint public a;
    uint public b;

    //get set method for addition of two numbers
    function setValueA(uint _a)public{
        a =_a;
        // return a;
    }

    function setValueB(uint _b)public{
        b =_b;
        // return b;
    }

    function getSum() public view returns(uint){
        return a + b;
    }

    //Method 2 for adding two numbers
    function add(uint a1, uint b1) public pure returns(uint){
        return a1 + b1;
    }

}

contract increment{
    //Increment operators
    uint public a2;
    uint public b2;

    function setA2(uint8 _a2)public{
        a2 = _a2;
        ++a2;
    }

    function setB2(uint8 _b2)public{
        b2 = _b2;
        --b2;
    }

}