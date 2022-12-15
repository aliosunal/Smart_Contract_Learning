// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract Constructor{
    // constant , immutable

    address public immutable owner;
    
    constructor() {
        owner = msg.sender;
    }
    
    
}






