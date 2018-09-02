pragma solidity ^0.4.24;

contract Functions {
    uint storedData;

    function () public payable {
        emit ReceivedEther(msg.sender, msg.value);
    }

    function set(uint x) public {
        storedData = sumInt(x);
    }

    function sumInt(uint x) private pure returns (uint) {
        return ++x;
    }

    function get() public view returns (uint) {
        return storedData;
    }

    event ReceivedEther(address sender, uint value);
}

contract Caller {
    Functions functions = Functions(0x000);

    function sendEther() public payable {
        address(functions).call.value(msg.value)();
    }
}