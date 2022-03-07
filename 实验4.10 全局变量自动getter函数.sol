// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract nonGetter {
    string name = "nonGetter";
}

contract selfGetter {
    string name = "selfGetter";
    function  getter() external view returns(string memory){
        return name;
    }
}

contract publicAutoGetter{
    string public name = "publicAutoGetter";
}

contract autoGetterAndselfGetter {
    string  public name = "selfGetter";
    function  name1() external view returns(string memory){
        return name;
    }
}
contract mappingNonGetter{
    mapping(uint => string) public map;
    function test() public {
        map[1] = "Jack";    
    }
}