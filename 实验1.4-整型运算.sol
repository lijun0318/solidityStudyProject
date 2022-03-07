// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;
contract math {
//根据所属类型值域，修改变量numa与numb值
    uint8 numa = 255;
int8 numb = 127;
int numc = 255;

function add(uint a , uint b) public pure returns(uint){
       return a+b;
    }
   	function subtract(uint a , uint b) public pure returns(uint){
       if(a > b) {
         	return  a - b;
    	} else {
       	return b - a;
    	}
   }
   function multiply(uint a , uint b) public pure returns(uint){
        return a*b;
    }
    function divide(uint a , uint b) public pure returns(uint){
        if(b != 0){
        return a/b;
     }
    } 
    function square(uint a , uint b) public pure returns(uint){
    //请你补充代码，使得返回的值为输入参数a的b次方。
        return a**b;
    }
}