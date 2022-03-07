// 示例1
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract Event {
    event Log(address indexed sender, string message);
    event AnotherLog();
 
    function test() public {
        //请按要求补充代码
        emit Log(msg.sender,"nihao");
        emit AnotherLog();
    }
}