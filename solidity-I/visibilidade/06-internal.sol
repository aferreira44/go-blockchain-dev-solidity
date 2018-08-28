pragma solidity ^0.4.24;

import "./05-internal.sol";

contract SimpleStorage2 is SimpleStorage {
    SimpleStorage simpleStorage = SimpleStorage(0x692a70d2e424a56d2c6c27aa97d1a86395877b3a);
    
    function get() public view returns (uint) {
        return simpleStorage.getInternal();
    }

    function get() public view returns (uint) {
        return super.getInternal();
    }
}