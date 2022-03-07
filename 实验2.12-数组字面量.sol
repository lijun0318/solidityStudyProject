// SPDX-License-Identifier: GPL-3.0
pragma solidity^0.8.0;
contract ArrayLiterals{
//请你根据报错提示，修改returns返回参数的类型
  	function getArrayLiterals() public pure returns(uint8[3] memory){
      	return [1,2,3];
  	}
 	//请你根据报错提示，修改returns返回参数的类型
  	function getArrayLiterals2() public pure returns(uint16[3] memory){
      	return [256,2,3]; //报错
  	}
//请你根据报错提示，修改returns返回参数的类型  
  	function getArrayLiterals3() public pure returns(uint[3] memory){
      	return [uint(1),2,3];
  	}
//请参考函数getArrayLiterals3，修改return返回值的类型
  	function getArrayLiterals4() public pure returns(uint[3] memory){
      	return [uint(256),2,3];
  	}
//补充方法体，实现遍历输入的数组元素并求和
  	function getArrayLiterals5(uint[] memory grade) public pure returns(uint){
       uint sum = 0;
       for(uint i = 0;i <grade.length;i++){
           sum += grade[i];
       } 
       return sum;
  	}
}