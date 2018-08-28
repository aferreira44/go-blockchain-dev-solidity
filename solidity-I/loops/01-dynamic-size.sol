pragma solidity ^0.4.24;

// Exemplo de como NÃO utilizar loops com arrays de tamanho dinâmico

contract MyContract {
    uint[] public numbers;
    event NumbersIncreased(uint newNumber);

    function setNumber(uint number) public {
        numbers.push(number);        
    }
    
    function increaseNumbers() public {
        for (uint i = 0; i < numbers.length; i++) {
            emit NumbersIncreased(++numbers[i]);
        }
    }
}