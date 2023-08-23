//SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

contract dataTypes{

    //Boolean- Values can be ture or false
    bool public boo= true;

    //Unsigned integer occcupies 256 bits and starts form 0
    uint8 public u8 = 2; //uint8 ranges from 0 to 2**8-1

    uint16 public u16 = 0; //uint16 ranges from 0 to 2**16-1

    uint public defaultValue = 13; //uint is 256 bits by default and ranges from 2**256-1

    //Signed integer covers negative values as well
    //int256 ranges from -2**255 to 2**255-1
    int8 public varInt8 = 88; //ranges form -2**7 to 2**7-1

    int public varDefault = 22; //ranges from -2**255 to 2**255-1

    //Minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //Min and max of uint
    uint public minUint = type(uint).min;
    uint public maxUint = type(uint).max;

    //wallet address/smart contract address
    address public defaultAddress = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;

    //String variable
    string public ename = "khodrubber";
}