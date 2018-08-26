pragma solidity ^0.4.24;

contract Test {
    event ReceivedEther(address sender, uint value);

    function () public payable {
        emit ReceivedEther(msg.sender, msg.value);
    }
}