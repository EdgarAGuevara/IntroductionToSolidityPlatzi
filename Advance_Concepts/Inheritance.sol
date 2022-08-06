// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interfaces.sol";
import "../Funtions/Modificators.sol";

// If a contract that we had been inheritanced receive parameters on constructor, we have 2 options
    //contract Inheritance is Interfaces, Modificators("Static value") {
//also we have another option that is create a constructor like that
    //constructor(string memory ownerName) Modificators(ownerName) {}

contract Inheritance is Interfaces, Modificators {
    constructor(string memory ownerName) Modificators(ownerName) {}

    function SumInterface(uint256 number1, uint256 number2)
        public
        view
        override
        IsOwner
        returns (uint256)
    {
        return number1 + number2;
    }
}
