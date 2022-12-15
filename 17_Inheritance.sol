// // SPDX-License-Identifier: Unlicensed
// pragma solidity ^0.8.0;



// // virtual 
// contract A {
//     uint public x;

//     uint public y;

//     function setX(uint _x) virtual public {
//         x = _x;
//     }

//     function sety(uint _y) virtual public {
//         y = _y;
//     }
// }


// // override 

// contract B is A {
    
//     uint public Z;

//     function setZ(uint _z) public {
//         Z = _z;
//     }

//     function setX(uint _x) override public {
//         x = _x + 2 ;
//     }
// }

// contract Human {
//     function sayHello() public pure virtual returns (string memory) {
//         return "itublockchain.com adresi uzerinden kulube uye olabilirsiniz:";
//     }
// }

// contract SuperHuman is Human {
//     function sayHello() public pure override returns (string memory) {
//         return "selamlar itu blockchain uyesi, nasilsin";

//     }


//     function welcomeMsg(bool isMember) public pure returns(string memory) {
//         return isMember ? sayHello() : super.sayHello();
//     }
// }



contract Wallet is ownable {
    fallback() payable external {}

    function sendEther(address payable to, uint amount) public {
        to.transfer(amount);
    }

    function showBlance() public view returns (uint) {
        return address(this).balance;
    }
}