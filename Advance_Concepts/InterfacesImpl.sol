// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interfaces.sol";

contract InterfacesImpl is Interfaces {
    function SumInterface(uint256 number1, uint256 number2)
        public
        pure
        override
        returns (uint256)
    {
        return number1 + number2;
    }
}
