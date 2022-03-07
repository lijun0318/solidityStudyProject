// SPDX-License-Identifier: GPL-3.0
pragma solidity^0.8.0;
contract transfer{
//思考空方法体的payable函数默认会给哪个地址转账？
    function pay() public payable{
    }
    function getContractBalance()public view returns(uint){
        return address(this).balance;
    }
//请拷贝你账户二的地址赋值给account2，并去掉方法体里的注释。    
    function ToAccount2()public payable{
       address account2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
       payable(account2).transfer(msg.value);
    }
//请拷贝你账户三的地址赋值给account3，拷贝完记得转回账户一。并去掉方法体里的注释。    
    function transferToAccount3()public payable{
        address account3 = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
        payable(account3).transfer(10 ether);
    }
}