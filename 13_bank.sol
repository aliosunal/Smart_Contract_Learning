// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;
contract Bank {

    mapping(address => uint ) balances;

    function sendEtherToContract() payable external {
    
        balances[msg.sender] = msg.value;
    }

    function showBalance() external view returns(uint) {
        return balances[msg.sender];
    }

    function withdraw(address payable to, uint amount) external returns(bool) {
        //require(balances[msg.sender] >= amount,"yetersiz bakiye");
        (bool sent,) = to.call{value: amount}("");
        balances[msg.sender] -= amount;
        return sent;
    }

    // Transfer()
    // Revert

    // Send()
    //true, false

    // call()
    uint public receiveCount = 0;
    uint public fallbackCount = 0;
   
   receive() external payable {
       receiveCount +=1;
   }

    

    fallback() external payable{
        fallbackCount += 1;

    }

}