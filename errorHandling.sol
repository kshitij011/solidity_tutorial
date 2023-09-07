//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract ErrorHandling{
    function testRequire(uint _i) public pure{
        //Require is used to validate conditions such as
        // > inputs
        // > conditions before execution

        require(_i>10,"Input must be greater than 10");
    }

    function testRevert(uint _i) public pure{
        //Revert is useful when condition to check is complex
        if((_i<=10)||(_i>=50)){
            revert("Input must be greater than 10");
        }
    }

    uint public num;
    function testAssert() public view{
        //Assert should be only used to test for internal errors & to check invariants.
        assert(num ==  0);
    }
}