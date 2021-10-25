//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {

    struct Purpose {
       address owner;
       string purpose;
       uint256 investment;
    }

    mapping(address => uint256) private balances;

    Purpose private purpose;

    event PurposeChange(address indexed owner, string purpose, uint256 investment);

    string private greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function getCurrentPurpose() public view returns (Purpose memory currentPurposer){
        return purpose;
    }

    function getBalance() public view returns (uint256){
        return balances[msg.sender];
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
