// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
contract funcParam {
    uint public age;
    string public name;
    function setParam(uint _age, string memory _name) public {
        age = _age;
        name = _name;
}
//1.请你补充函数test，使其调用函数setParam，并直接传入参数你的年龄和你的名字。   
    function test() public{
        //**1**
        setParam(21,unicode"李俊");
}
//2.请你补充函数test2，用命名传参的方式调用函数setParam，传入数字20与你妈妈的名字。然后去掉注释，编译执行。
    function test2() public {
        setParam({_age:20,_name:unicode"李俊"});
    }
}