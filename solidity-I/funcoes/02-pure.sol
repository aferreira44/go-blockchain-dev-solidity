pragma solidity ^0.4.24;

contract Pure {
    uint storedData;

    function set(uint x) public {
        storedData = sumInt(x);
    }

    function sumInt(uint x) private pure returns (uint) {
        return ++x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}