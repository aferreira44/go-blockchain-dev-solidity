pragma solidity ^0.4.24;

contract Enum {
    enum ActionChoices { GoLeft, GoRight, GoStraight, GoBack }
    ActionChoices choice;

    function setGoStraight() public {
        choice = ActionChoices.GoStraight;
    }

    function setGoRight() public {
        choice = ActionChoices.GoRight;
    }

    function setGoLeft() public {
        choice = ActionChoices.GoLeft;
    }

    function setGoBack() public {
        choice = ActionChoices.GoBack;
    }

    function setChoice(ActionChoices _choice) public {
        choice = _choice;
    }

    function getChoice() public view returns (ActionChoices) {
        return choice;
    }
}