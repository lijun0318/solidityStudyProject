// SPDX-License-Identifier: GPL-3.0
pragma solidity^0.8.0;
contract changeFixBytes{
bytes12 name = 0xe88081e5ad90e5a5bde59180;
    function changeBytes1() public view returns(bytes1)//changeBytes1返回的值是？
    {
        //请将name转换成bytes1类型
        return bytes1(name);
}
    function changeBytes2() public view returns(bytes2)//changeBytes2返回的值是？
    {
        //请将name转换成bytes2类型
        return bytes2(name);
}
    function changeBytes16() public view returns(bytes16)//changeBytes16返回的值是？
    {
        //请将name转换成bytes16类型
        return bytes16(name);
    }  
}