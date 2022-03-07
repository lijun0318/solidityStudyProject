// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
contract ByteArray{ 
bytes1 public num1 = 0x7a;     //0111 1010
bytes2 public num2 = 0x7a68;    //0111 1010 0110 1000
bytes12 public num3 = 0x7a68656e676a69616e78756e;  //96位
function getLength() public view returns(uint){
    	return num1.length;
}    //会返回 （1）
function getLength2() public view returns(uint){
    	return num2.length;
}  //会返回 （2）
	function getLength3() public view returns(uint){
    	return num3.length;
}   // 会返回 （3）
// function setLength() public {
//     	num1.length = 18;   // 判断字节数组长度是否能改变？ （是或否）
// }
}