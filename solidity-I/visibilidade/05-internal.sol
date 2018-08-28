pragma solidity ^0.4.24;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function getInternal() internal view returns (uint) {
        return storedData;
    }

    function getPublic() public view returns (uint) {
        return storedData;
    }
}