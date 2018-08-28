pragma solidity ^0.4.24;

contract Storage {
    uint public sum = 0;

    function storeSum(uint x) public {
        for (uint i = 0; i <= x; i++) {
            sum += i;
        }
    }

    function cheapestSum(uint x) public {
        uint temp = sum;
        for (uint i = 0; i <= x; i++) {
            temp += i;
        }
        sum = temp;
    }
}