// SPDX-License-Identifier: GPL-3.0
pragma solidity^0.8.0;
contract BytesToString{
    bytes name = new bytes(2);
    function Init() public{
        name[0] = 0x4c;
        name[1] = 0x5a;
    }
    function BytestoString()public view returns(string memory){
        //请补全代码，将bytes类型的name转换为string类型，并返回
        return string(name);
}

string Lz ="LaoZi";
    function stringToBytes()public view returns(bytes memory){
        //请补全代码，将string类型的Lz转换为bytes类型，并返回
        return bytes(Lz);
}
//固定长度字节数组 =》 string
bytes5 staticBytes = 0x68656c6c6f;
function BytesToString2()public view returns(string memory){
        //请补充代码，将固定长度字节数组通过间接的方式转换为string
        bytes memory newBytes = new bytes(staticBytes.length);
        for(uint i = 0;i < staticBytes.length;i++){
            newBytes[i] = staticBytes[i]; 
        }
        return string(newBytes);
}
}