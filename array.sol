//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract array{

    //dynamic array
    uint[] public arr; //dynamic array of unsigned integers.
    uint public lastVar;

    // fixed size array
    uint[10] public myFixedSizeArray; //index 0-9
    uint[] public arr2 =[23,43,90,62]; // [0,1,2,3]

    //returns the value of the specified index
    function get(uint i) public view returns (uint){
        return arr[i]; //i is index of the array
    }

    //returns entire array
    function getArr() public view returns (uint[] memory){
        return arr;
    }

    //function to push element in an array
    function push(uint i) public{       //This will increase the array length by 1.
        arr.push(i);
    }

    function pop() public{
        //remove last element in the array
        //decrease the array length by 1
        lastVar = arr[arr.length -1];
        arr.pop();
    }

    //get length of the array
    function grtLength() public view returns (uint){
        return arr.length;
    }
}