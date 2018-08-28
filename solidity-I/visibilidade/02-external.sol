pragma solidity ^0.4.24;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    // function get() external view returns (uint) {
    //     return storedData;
    // }

    function get() public view returns (uint) {
        return storedData;
    }

    function getExternal() public view returns (uint) {
        return get();
    }
}