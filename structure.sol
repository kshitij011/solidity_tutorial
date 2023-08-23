//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

//using structure keyword we can create our custom datatype

contract structure{
    struct person{
        uint age;
        string name;
    }

    struct employee{
        string emp_name;
        uint104 emp_salary;
        bool status;
        bytes job_title;
    }
    person p1;
    employee[] e1;
    employee e2;

    constructor(){
        p1.age = 23;
        p1.name = "sample";

        e2.emp_name = "Emp1";
        e2.emp_salary = 85000;
        e2.status = true;
        e2.job_title = "Blockchain Engineer";

        e1.push(e2);
    }

    function getEmployee(uint _index)public view returns(employee memory){
        return e1[_index];
    }

    function getPerson() public view returns (person memory){
        return p1;
    }

    function setEmployee(string memory _name,uint104 _salary, bytes memory _job_title, bool _status) public{
        e2.emp_name = _name;
        e2.emp_salary = _salary;
        e2.status = _status;
        e2.job_title = _job_title;
        e1.push(e2);
    }

    function setPerson(string memory _name, uint _age) public{
        p1.age = _age;
        p1.name = _name;
    }
}