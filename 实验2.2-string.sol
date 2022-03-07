// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract demo{
    string name ="Laozi";
    string specialName ="!@#$%^&*";
    string chineseName = unicode"老子"; //请补充代码使之编译成功

    //函数getNameLength返回name的字节长度是多少？  （1）
    function getNameLength() public view returns(uint){
        return bytes(name).length;
    }
    //函数getSpecialNameLength返回specialName的字节长度是多少？ （2）
    function getSpecialNameLength() public view returns(uint){
        return bytes(specialName).length;
    }
    //函数getChineseNameLength返回chineseName的字节长度是多少？ （3）
    function getChineseNameLength() public view returns(uint){
        return bytes(chineseName).length;
    }
    
    function getName() public view returns(bytes memory){
        return bytes(name);
    }
    
    function getChineseName() public view returns(bytes memory){
        return bytes(chineseName);
    }  
}