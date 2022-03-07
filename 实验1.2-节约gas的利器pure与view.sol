// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Test1 {
    // 定义一个string字面量
string public name = unicode"老子Hello ";
//应该添加什么修饰符取消getName函数的警告？
    function getName() public  view returns (string memory) {
        return name;
    }
    function setName(string memory _newName) public {
        name = _newName;
} 
 //应该添加什么修饰符取消f函数的警告？
    function f(uint a, uint b) public pure returns (uint) {
        return a * (b + 42);
    } 
}
 