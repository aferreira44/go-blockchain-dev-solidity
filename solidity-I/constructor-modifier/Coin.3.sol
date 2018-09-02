pragma solidity ^0.4.24;

contract Coin {
    address public minter;
    mapping (address => uint) public balances;

    event Sent(address from, address to, uint amount);

    constructor () public {
        minter = msg.sender;
    }

    function mint(address receiver, uint amount) public onlyMinter {
        balances[receiver] += amount;
    }

    function send(address receiver, uint amount) public {
        require(
            balances[msg.sender] >= amount,
            "The account balance should be equal or greater than amout"
        );
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receiver, amount);
    }

    modifier onlyMinter {
        require(
            msg.sender == minter,
            "Only minter can call this function."
        );
        _;
    }
}