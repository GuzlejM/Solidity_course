// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SipleStorage {

    // unit8, unit124, uint256
    uint256 favoriteNumber;

    function store(uint256 _favoriteNumber) public {
      favoriteNumber = _favoriteNumber;
    }
}