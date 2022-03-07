// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;
contract demo{
    //函数add将会返回什么值？  （1）
    function add() public pure returns (int _overflow) {
        uint8 max = 256 - 1;
        return max + 1;
    } 
   //函数sub将会返回什么值？   （2）
	function sub() public pure returns (int _underflow) {
    	uint8 min = 0;
    	return min - 1;
	}
   //函数mul将会返回什么值？    （3）
	function mul_overflow() public pure returns (int _overflow) {
    	uint8 mul = 128;
    	return mul*2 ;
	}
}