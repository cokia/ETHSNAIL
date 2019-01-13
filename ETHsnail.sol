/*
MIT License

Copyright (c) 2019 hanukoon

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

//it just a moddel of gamle with solidity and ethereum

pragma solidity ^0.4.24;        //user solidity 0.4.24
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
    
    //play the game and appoint winner 
    function gambleeeee() public payable{
        
        uint random = uint(block.blockhash(block.number-1))%3 + 1;  //make random number(in range 1-3) with next block number
        
        //find random winner
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
    
    //check result of game
    function getresult() constant public returns(uint) {
        return winner;
    }
    
    //give reward to player
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
    
  
