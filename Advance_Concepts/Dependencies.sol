// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppeling/contracts/utils/match/SafeMatch.sol";

contract Dependencies {
    function sumNumbers(unit number1, unit number2)
        public
        pure
        returns (uint256)
    {
        return SafeMatch.add(number1, number2);
    }
}
