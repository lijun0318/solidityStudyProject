// // 示例1
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0; 
// contract TwoArray{
// // 1、假如有小明，小红和小华三位同学，分别有文科成绩与理科成绩。
// //为了记录他们的成绩，固定二维数组应该怎样定义？是uint[2][3],还是uint[3][2]?
//    	uint[2][3] grade = [[83,89],[90,83],[96,79]];
    
// //2、请补充代码，使得函数getLength返回二维数组grade的总长度
//     function getLength() public view returns(uint){ 
//         //**1**
//         return grade.length;
//     } 
// // 3、 请补充代码，使得函数getElement返回二维数组grade元素的长度
//     function getElementLegth() public view returns(uint){
//         //**2**
//         return grade[0].length;
//     }
// // 4、如果grade是按顺序定义的，哪请你补充代码，返回小华的文科成绩。(结果为96)
//     function getXiaohuaGrade() public view returns(uint){
//         //**3**
//         return grade[2][0];
//     }
// // 5、老师突然发现小红的理科成绩83登记错了，请你补充代码，将其改为86
//     function changeContent() public {
//         //**4**
//         grade[1][1] = 83;
// }
// function getGrade(uint a, uint b) public view returns(uint){
//         return grade[a][b];
// }
// }

contract sumContract{
uint[2][3] grade = [[83,89],[90,86],[96,79]];
//老师想知道他们成绩的总和，请你补充下面的sum函数，使得其返回数组grade全部元素的和。
    
    function getSum() public view returns(uint){
        uint sum =0;
        for(uint i = 0;i<3; i++){
            for(uint j =0;j<2;j++){
                sum += grade[i][j];
            }
            }
            return sum;
    }
}