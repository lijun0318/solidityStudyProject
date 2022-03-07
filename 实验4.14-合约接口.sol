// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0; 
 
contract StructTest{ 
    // 定义一个结构体 
    struct Student{ 
        string name; 
        uint grade; 
       mapping(uint=>string) map;
}
    Student stu;
    function init() public returns(string memory,uint, string memory){
        Student memory s = Student("tong",100); 
        stu.map[0] = "jack";
        return(s.name,s.grade, stu.map[0]); 
    }
}