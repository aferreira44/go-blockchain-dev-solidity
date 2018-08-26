pragma solidity ^0.4.24;

contract MyContract {
    uint[] public numbers;

    function setNumber(uint number) public {
        numbers.push(number);        
    }

    function increaseNumbers() public view returns (uint[]) {
        return increase(numbers);
    }
    
    function increase(uint[] numbersArray) internal pure returns (uint[]) {
        for (uint i = 0; i < numbersArray.length; i++) {
            numbersArray[i]++;
        }
        return numbersArray;
    }
}