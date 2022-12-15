// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

contract variables {
// state veriables
    string public bestClub = "usak blockchain";

    function show() public pure returns(uint){
    //local veriables 
    uint number = 17;
        return number;
    
    }

    function show2() public view returns(address){
    // global veriables
    

        return msg.sender;
    }




//     // Fixes Size Types 
//     bool isTrue = false;

//     int8 number = 12;


// // address myadress = 0x35F2A8CcE758Be48f3Ee4A5eA316f0C21fbC571B ;

// // bytes32 name1 = "usak blockcahin";
// // // dynamic-size Types

// // string name2 = "usak blockchain";
 
// //  bytes name3 = "usak bc";

// //  uint[] arry = [1,2,3,4,5,6];
// // mapping (uint => string)list;
// // // user defined value types 
// // struct Human{
// //     uint ID;
// //     string name;
// //     uint age;
// //     address addresss
// // }
// // mapping(uint => Human) list2;
// //     Human person1
// //     person1.ID = 125212;
// //     person1.name = "aliosman";
// //     person1.age = 29;
// //     person1.addresss = 0x........;

// //     enum trafficlight{
// //         RED,
// //         YELLOW,
// //         GREEN
// //     }

// //     //trafficlight.GREEN;

// //     1 wei = 1;
// //     1 ether = 10^18 wei;
// //     1 gwei = 10^9 wei;

// //     1 = 1seconds;
// //     1 minutes = 60 seconds;
// //     1 hours = 60 minutes = 3600 seconds;
// //     1 days
// //     1 weeks


    }