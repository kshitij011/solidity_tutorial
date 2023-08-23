//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Enum{
    //enum representing shipping status
    enum Status{
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled,
        Notyet
    }
    /*
    In order to use enum you need to create an object
    Default is the first element in the enum(Pending in this case)
    Enum is custom datatype
    */
    Status public status;

    function get() public view returns (Status){
        return status;
    }

    //Update status by passing uint into input
    function set(Status _status) public{
        status = _status;
    }

    function accept() public{
        status = Status.Accepted;
    }

    //Updating to a specific enum
    function cancel() public{
        status = Status.Canceled;
    }

    function reset() public{
        delete status;
    }
}