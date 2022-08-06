// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract GasFee {
    //Total GAS = (gas * gas_price)+ gas_fee

    uint256 public number;

    function setNumber(uint256 input) public {
        number = input;
    }
}
