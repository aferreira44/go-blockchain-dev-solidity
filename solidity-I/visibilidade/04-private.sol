pragma solidity ^0.4.24;

import "./03-private.sol";

contract SimpleStorage2 {
    SimpleStorage simpleStorage = SimpleStorage(0x35eF07393b57464e93dEB59175fF72E6499450cF);

    function getPrivate() public view returns (uint) {
        // return simpleStorage.getPrivate();
        return simpleStorage.getPublic();
    }
}