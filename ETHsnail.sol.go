pragma solidity ^0.4.24;
contract Gamble {
    uint user = 0;
    uint userbalance = 1;
    uint winner = 0;
   // uint random = 7;
    address public owner = msg.sender;
    
    function recv (uint A) public {
        user = A;
    }
    
    function getBalance() constant public returns(uint) {
        return userbalance;
    }
    
    function gambleeeee() public payable{
    uint random = uint(block.blockhash(block.number-1))%3 + 1;
          if(random%2==0){
                winner = 1 ;    
            }
             if(random % 3 == 0){
                winner = 2  ;  
            }
             if(random % 7 == 0){
                winner = 3  ; 
            }
         }
    function getresult() constant public returns(uint) {
        return winner;
    }
    
    function reward() public payable{
        
        if(user == winner){
            userbalance += 2;
        }
         if(user != winner){
            userbalance -= 1;
        }
        //owner.transfer(userbalance);
        }
}
    
  
