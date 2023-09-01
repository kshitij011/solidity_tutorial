//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ifElse{
    uint public checkVar;

    function foo(uint x)public pure returns (uint){
        if(x<10){
            return 0;
        }
        else if(x<20){
            return 1;
        }
        else{
            return 2;
        }
    }

    function checkOddEven(uint _checkVar)public returns(uint){
        if (_checkVar % 2 == 0){
            checkVar = 0;
            return 0;
        }
        else{
            checkVar = 1;
            return 1;
        }
    }
}