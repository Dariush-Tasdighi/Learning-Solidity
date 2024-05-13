// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract WorkingWithStringContract {
    string private name;

    function setName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}
