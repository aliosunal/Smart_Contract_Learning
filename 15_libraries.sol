// SPDX-License-Identifier: Unlicensed
pragma solidity ^0.8.0;

library Math {
    //kullanılabilirliği

    function plus(uint x, uint y) public pure returns(uint) {
        return x + y;
    }

    function minus(uint x, uint y) public pure returns(uint) {
        return x - y;

    }

    function multi(uint x, uint y) public pure returns(uint) {
        return x * y;
    }

    function divide(uint x, uint y) public pure returns(uint) {
        require(y != 0, "bu sayisi begenmedim");
        return x / y;
    }

    function min(uint x, uint y) public pure returns(uint) {
        if( x <= y){
            return x;
        }else {
            return y;
        }
    }

    function max(uint x, uint y) public pure returns(uint) {
        if( x >= y){
            return x;
        }else {
            return y;
        }
    }
}

library Search {
    function indexof(uint[] memory list, uint data) public pure returns(uint) {
        for (uint i = 0; i < list.length; i++) {
            if (list[i] == data ) {
                return i;
            }
        }
        return list.length;
    }
}

contract Library {

    using Math for uint;
    using Search for uint[];

    function trial1(uint[] memory x, uint y) public pure returns(uint) {
        return x.indexof(y); //Search.indexof(x,y); //Math.plus(x,y);
    }


}

