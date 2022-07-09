pragma solidity ^0.8.13; 

contract Contract {
    constructor() {
    }

    function add(uint256 a, uint256 b) external pure returns (uint256) {
        return a + b;
    }
}