// 示例1
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MemoryTest {
//这里声明的是什么存储类型的变量age？  （1）
uint public age = 20;  
    function add(uint num) public pure returns(uint){
        num += 1;
        return num;
}
// test函数中add(i)函数对i进行了加一的操作，请问return的i的值还是2吗？（2）        
    function test() public pure returns(uint,uint){
        uint i = 2;
        uint j = add(i);
        return (i,j);   
}

//函数changeAge中add(age)函数对age进行了加一的操作，请问age的值还是20吗？   （3）
    function changeAge() public view {
        add(age);
    }
}

 
contract StorageTest{ 
    uint[] public arrx = [1,2,3]; 
    function test() public returns(uint){ 
        uint[] storage z = arrx;
        z[0] = 100;
        return z[0]; 
}
//执行test函数后，数组z的元素还可以获取吗？为什么？   （1）
    function test2() public view returns(uint,uint){
       // return (z[0]);  //将注释去掉，编译检查结果
    }
//执行test函数后，arrx索引为0的值会变吗？ 值是多少？  （2）
    function test3() public view returns(uint){
        return arrx[0]; 
}
}