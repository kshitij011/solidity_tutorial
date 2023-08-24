//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

//while deploying a token constructor must be used
//you will be allocated as the owner of all the tokens
//If some problem arises only owner can access the contract

contract functionModifier{

    address public owner;
    uint public x=10;
    bool public locked;

    constructor(){
        //Set owner of the tokens(transaction sender will the owner in this case)
        owner = msg.sender; //msg.sender is a global variable
        //acceisable to every contract in solidity
    }

    //modifier to check that the caller is the owner of the contract
    modifier onlyOwner(){
        require(msg.sender == owner, "Not owner");

        _;  //let code continue execution even if the value is false
    }

    //modifiers can take inputs
    //this modifier checks that the address passed is not the zero address

    modifier validAddress(address _addr){
        require(_addr != address(0),"Invalid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner){
        owner = _newOwner;
    }

    //modifiers can be called before and/or after a finction
    //this modifier prevents a function from being called while it is still executing.

    // modifier noReentrancy(){
    //     require(!locked, "No reentrancy");

    //     locked = true;
    //     _;
    //     locked = false;
    // }
}