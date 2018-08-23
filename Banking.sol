pragma solidity ^0.4.24;

contract bank {
    address owner;
    uint256 balances;
    constructor() public {
       owner=msg.sender;
    }
    
        function withdraw(uint withdrawAmount) public {
		// Limit withdrawal amount,check for owner,check for balance availability
		 require(msg.sender==owner);
		require(withdrawAmount <= 0.5 ether);
		require(address(this).balance >= withdrawAmount); 
		// Send the amount to the address that requested it
		msg.sender.transfer(withdrawAmount);
		//transfer total balance in contract in case of destruction
       msg.sender.transfer(address(this).balance);
    }

    function deposit(uint256 amount) payable public {
        require(msg.value == amount);
        balances+= amount;
        // nothing else to do!
    }

    function getBalance() private view returns (uint256) {
        return address(this).balance;
    }
}
