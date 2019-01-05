pragma solidity ^0.5.1;
contract send{
    address payable wallet;
    mapping(address=>uint256) public balances;
    
    constructor(address payable _wallet) public {
        wallet=_wallet;
    }
    event purchase (address _buyer, uint256 amount);
    function buyToken() public payable{
        balances[msg.sender]+=1;
        wallet.transfer(msg.value);
        emit purchase(msg.sender, msg.value);
    }
    function() external payable {
        buyToken();
    }
}
