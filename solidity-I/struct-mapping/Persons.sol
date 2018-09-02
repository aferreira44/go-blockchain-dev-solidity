pragma solidity ^0.4.24;

contract Persons {
    
    struct Person {
        uint age;
        string fName;
        string lName;
    }
    
    mapping (address => Person) persons;
    address[] public personsAccts;
    
    function setPerson(address _address, uint _age, string _fName, string _lName) public {
        Person storage person = persons[_address];
        
        person.age = _age;
        person.fName = _fName;
        person.lName = _lName;
        
        personsAccts.push(_address);
    }
    
    function getPersons() public view returns(address[]) {
        return personsAccts;
    }
    
    function getPersons(address _address) public view returns (uint, string, string) {
        return (persons[_address].age, persons[_address].fName, persons[_address].lName);
    }
    
    function countPersons() public view returns (uint) {
        return personsAccts.length;
    }
}