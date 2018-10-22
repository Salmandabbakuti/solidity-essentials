pragma solidity ^0.4.24;

contract counter {
    uint256 counter;

function increment() public{
    counter++;
             } 

function decrement() public{
        counter--;
              }
 function getcounter() public constant returns(uint256){
    
     return counter;
                }
 }
