//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract loops{
    int public a;
    int public b;

    function newLoop() public{

        a=1;
        b=a;

        for(int j=1;j<=10;j++){
            if(j==5){
                continue;
            }
            else if(j==8){
                break;
            }
            b = b*j;
        }
    }

    function loop() public{
        for(int i =0; i<10; i++){

            if(i==5){
                break;
            }
            a=i;
        }

        uint j;

        while (j<10){
            j++;
        }
    }
}