// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.8.0;
 
contract enumTest {
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill}
    ActionChoices public _choice;
    ActionChoices constant defaultChoice = ActionChoices.GoStraight;
 
    function setGoStraight(ActionChoices choice) public {
        _choice = choice;
    }
    function getChoice() public view returns (ActionChoices) {
        return _choice;
    }
    function getDefaultChoice() public pure returns (uint) {
        return uint(defaultChoice); 
    }
}