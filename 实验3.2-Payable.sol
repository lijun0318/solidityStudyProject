// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0; 
contract payableTest{ 
   function pay() payable public{
   }
   function getBalance() public view returns(uint){
       return address(this).balance;
   }
}