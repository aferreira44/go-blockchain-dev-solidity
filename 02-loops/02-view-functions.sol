pragma solidity ^0.4.24;

contract MyContract {
    uint[] public numbers;

    function setNumber(uint number) public {
        numbers.push(number);   
    }
    
    function readNumbers() public view returns (uint[]) {
        uint[] memory _numbers = new uint[](numbers.length);
        for (uint i = 0; i < numbers.length; i++) {
            _numbers[i] = numbers[i];
        }
        return _numbers;
    }
}