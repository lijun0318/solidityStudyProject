// 示例1
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
contract Father {
//声明了一个external类型的函数bark
    function bark() external pure returns(string memory){
        return "WangWang";
}
//1.合约内部函数externalTest是否可以调用external类型的函数bark？如果不能，请你补充代码使之成功调用。
    function externalTest() public view returns(string memory){
        return this.bark();
    }
}
//2.继承的合约son是否可以调用父类Fater里面的external类型的函数bark？如果能，请你补充代码使之成功调用。
contract son is Father{
    function extTest() public view returns(string memory){
        return this.bark();
    }
}
//3.外部合约是否可以调用合约Fater里external类型的函数bark，如果可以，请你补充代码，使之成功调用。
contract exterTest{
    		//**1**
           function callFather()public returns(string memory){
                Father f = new Father();
                return f.bark();
           }
}
// 示例2

contract scopeTest {
uint public a = 100;
    function test() public pure returns (uint) {
        uint a = 8;
        return a;
    }
}