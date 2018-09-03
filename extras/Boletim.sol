pragma solidity ^0.4.24;

import "./Ownable.sol";

contract Boletins is Ownable {
    mapping(address => Boletim) public _boletins;
    mapping(address => Authorizer) public _auhtorizers;
    
    struct Authorizer {
        address _address;
        string name;
    }
    
    struct Boletim {
        string hash;
        uint entryDate;
    }
    
    function addBoletim(address _address, string hash) public onlyAuthorizer {
        Boletim memory boletim;
        
        boletim.hash = hash;
        boletim.entryDate = now;
        
        _boletins[_address] = boletim;
    }
    
    modifier onlyAuthorizer() {
        require(
            _authorizers[msg.sender]._address != 0x0
        );
        _;
    }
}