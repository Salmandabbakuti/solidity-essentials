 contract A{
        uint a =10;
        address owner;
        constructor(){
            owner = msg.sender;
        }
        modifier onlyOwner(){
            require(msg.sender == owner);
            _;
             }

        function showOwner() public onlyOwner returns(address) {
            return owner;
              }
            
        function getValue() public onlyOwner returns(uint) {
            return a;
              }
    
    }
