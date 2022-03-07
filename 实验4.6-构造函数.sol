// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// contract constructorTest{ 
//      uint public num;  
//       constructor(){
//        num = 100; 
//     }
// }

// //合约部署后，num的值是多少？  （1）
// contract constructorTest{ 
//     uint public num = 1; 
//     constructor(){
//     	num = 100;
//     }
// }

contract constructorTest{ 
    uint public num = 1; 
    constructor(uint _newNum){
    	num = _newNum;
    }
}