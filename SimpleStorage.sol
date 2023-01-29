// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SimpleStorage {

    // unit8, unit124, uint256
    uint256 public favoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people; 

    function store(uint256 _favoriteNumber) public {
      favoriteNumber = _favoriteNumber;
      retrieve();
    }

    function retrieve() public view returns (uint256){
        return favoriteNumber;
    } 
    
    //view, pure
    function add() public pure returns (uint256) {
      return(1 + 1);
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
    }

    function getAll() public view returns (People[] memory) {
        return people;
    }
}