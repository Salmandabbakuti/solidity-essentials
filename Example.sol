pragma solidity ^0.4.24;
contract Example {
address owner;
address[] learners;
uint256 numberOfLearners;

struct learner {
string name;
uint8 age;
bytes32 occupation;
uint256 ContactNumber;
 }
mapping (address => learner)learnerInfo;
constructor() public {
owner = msg.sender;
 }

modifier onlyOwner {
require(msg.sender==owner);
_;
}


function join() public payable {
require (msg.value= 0.1 ether);
learners.push(msg.sender);
numberOfLearners++;
now;
}

function kill() public onlyOwner() {
selfdestruct(owner);
  }
function showOwners() public returns(address) {
return owner;
   }
}
