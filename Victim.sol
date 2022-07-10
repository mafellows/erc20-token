pragma solidity ^0.8.4;

contract Victim {
  mapping (address => uint) public balances;

  function victim() public payable {
    deposit();
  }
  
  function deposit() public payable {
    balances[msg.sender] = msg.value;
  }
  
  function withdraw() public {
    uint256 amount = balances[msg.sender];
    // require(msg.sender.call{value: amount}(""));
    balances[msg.sender] = 0;
  }
}