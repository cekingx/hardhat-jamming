// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Event {
  mapping (address => uint256) private _ticket;
  uint256 public _counter = 0;
  string public name;
  string public date;

  constructor(string memory _name, string memory _date) {
    name = _name;
    date = _date;
  }

  function getTicket(address _address) external returns (uint256) {
    return _ticket[_address];
  }

  function buy() external {
    _counter += 1;
    _ticket[msg.sender] += 1;
  }
}