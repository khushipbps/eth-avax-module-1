// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Module1 {
   
    // uint public num = 0;
    uint public totalSupply = 0;

    function addSupply(uint val) public{
        assert(val > 0);

        totalSupply += val;
    }


    function burnSupply(uint val) public {
        require(val > 0, "Can burn only positive value");

        totalSupply -= val;
    }

    function setSupply(uint val) public {
        totalSupply = val;

        if(totalSupply > 1000){
            revert("Supply should be less or equal to 1000");
        }
    }

}
