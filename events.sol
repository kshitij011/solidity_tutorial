//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract events{
    struct Person{
        uint age;
        string name;
    }

    Person p1;

    constructor(){
        p1.age = 12;
        p1.name = "Sam";
    }

    event newPerson(address owner, Person p2, uint timestamp);
    //store the offchain data
    //enywhere on blochchain-Onchain
    //everything apart from blockchain-Offchain

    function getPerson() public view returns(Person memory){
        return p1;
    }

    function setPerson(uint _age, string memory _name) public{
        p1.age = _age;
        p1.name = _name;

        emit newPerson(msg.sender, p1, block.timestamp);
        //the sockets listening to this port will get this information,
        //this is how the data will be stored online on blockchain(other nodes)
    }
}