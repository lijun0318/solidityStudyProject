// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract DynamicByte{
    bytes public name = new bytes(2);
    function Initname ()public{
        name[0] = 0x7a;
        name[1] = 0x68;
    }
    function getLength() public view returns(uint) {
        return name.length;
    }
    function changename()public{
        name[0] = 0x45;
    }
    function pushBytes()public{
        name.push(0x45);
    }
 function bytesToString()public view returns(string memory){
   return  string(name);
 }
}