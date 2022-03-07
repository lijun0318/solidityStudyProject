// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract DynamicTwoArray{
uint[][] grade=[[1,2],[3,4],[5,6]];
//1.返回数组grade。
    function getContent() public view returns(uint[][] memory){
        //**1**
        return grade;
}
//2.返回数组grade的长度和二维数组元素的长度。
function getLength() public view returns(uint,uint){
//**2**
    return (grade.length,grade[0].length);
}
//3.遍历数组的元素求和。
    function add() public view returns(uint){
        //**3**
        uint sum =0;
        for(uint i = 0;i<3; i++){
            for(uint j =0;j<2;j++){
                sum += grade[i][j];
            }
            }
            return sum;

}
//4.是否可以直接改变数组的长度？
function changeLength()public {
//grade.length = 5;
}
//5.将grade数组的第一个二维数组的第一个元素改成100。(注意数组的起始数字为0)
    function changeConetent()public{
        //**5**
        grade[0][0] = 100;
}
//6.返回更改后的数组元素。
    function getcahngeContentresult() public view returns(uint){
    	//**6**
        return grade[0][0];
    }
}