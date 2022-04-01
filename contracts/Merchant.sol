// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./Event.sol";
import "hardhat/console.sol";

contract Merchant {
  string public name;
  address[] public events;

  constructor(string memory _name) {
    name = _name;
  }

  function deploy(string memory _name, string memory _date) external {
    address newAddress = address(new Event(_name, _date));
    console.log("New deployed address: '%s'", newAddress);
    events.push(newAddress);
  }

}