pragma solidity ^0.4.24;
contract Gamble {
    uint user = 0;
    uint userbalance = 0;
    uint random = uint(block.blockhash(block.number-1))%3 + 1;
    uint Snail1 = 0;
    uint Snail2 = 0;
    uint Snail3 = 0;
    uint winner1 = 0;
    uint winner2 = 0;
    uint winner3 = 0;
    address private owner = msg.sender;
    function recv (uint A) public {
        user = A;
    }
    function plus() public payable {
        userbalance += msg.value;
    }
    function getBalance() constant public returns(uint) {
        return userbalance;
    }
    
    function Gamble() public {
         while(Snail1 >= 20 && Snail2 >= 20 && Snail3 >= 20){
            uint random1 = uint(block.blockhash(block.number-1))%3 + 1;
            
=           if(random1 % 2 == 0){
                winner = 1     
            }
             if(random1 % 3 == 0){
                winner = 2    
            }
             if(random1 % 7 == 0){
                winner = 3   
            }
            }
         }
        } 
    
    function reward(uint ub) public payable{   
        msg.sender.send(ub);
        }
}
    
  
