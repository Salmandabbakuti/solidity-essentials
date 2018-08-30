pragma solidity ^0.4.24;

contract Calculator {
 
function sum(uint _a, uint _b) public returns (uint) {

      return _a + _b;
        }

 function subtract(uint _a,uint _b) public returns (uint) {

 return _a - _b;
         }
         
function multiply(uint _a, uint _b) public returns (uint) {


     return _a * _b;
       }

 function divison(uint _a, uint _b) public returns (uint) {

  return _a / _b;
        }

function square( uint _a) public returns(uint) {
    return _a*_a;
        }

function getDate() public returns(uint) {
     return now;
        }

function exponent(uint a,uint b) public returns(uint) {
    return a**b;
        }
      
}
