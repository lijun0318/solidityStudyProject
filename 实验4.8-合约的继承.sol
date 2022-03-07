// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 
// contract grandFather{
//     uint gudong = 100;
//     function study()public pure returns(string memory){
//         return "XueXi";
//     }
// } 
 
// contract father is grandFather{
//     uint money = 999;  
    // function smoking() public pure virtual returns (string memory) {
    //     return "I like somking";
    // }  
//     function getGudong()public view returns(uint){
//         return gudong;
//     }
// }
// contract son is father {   
//     function getMoney() public view returns (uint) {
//         return money;
//     } 
//     function test() public pure returns(string memory){
//         return smoking();
// }
//     function LearningStudy() public pure returns(string memory){
//         return study();
//     }
// function smoking() public pure override returns (string memory) {
//        return "I don't like somking";
// }  
// }


contract Father{
    uint public Money = 2000; 
    // uint internal Money = 3000; 
    // uint private Money = 4000; 
    // uint external Money = 5000; 
    function noSmoking() external pure returns(string memory){
        return "I'm not somking";        
    } 
}
contract Son is Father{ 
    function getMoney() public view returns(uint){ 
        return Money; 
    } 
    
    function test() public view returns (string memory) {
        return this.noSmoking();
    }
}