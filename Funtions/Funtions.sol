// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Funtions {
    uint256 private result;

    function Sum(uint256 number1, uint256 number2)
        public
        pure
        returns (uint256)
    {
        return InteralSum(number1, number2);
    }

    function InteralSum(uint256 number1, uint256 number2)
        private
        pure
        returns (uint256)
    {
        return number1 + number2;
    }

    function getResult() public view returns (uint256) {
        return result;
    }
}
