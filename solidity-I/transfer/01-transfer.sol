pragma solidity ^0.4.24;

contract Widthdraw {
    event EtherReceived();

    function () public payable {
        emit EtherReceived();
    }

    function widthdraw() public {
        address sender = msg.sender;
        address myContract = this;
        if (sender.balance < myContract.balance) {
            sender.transfer(myContract.balance);
            // require(sender.send(myContract.balance), "Send error");
        }
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}