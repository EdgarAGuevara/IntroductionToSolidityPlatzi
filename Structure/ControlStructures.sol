// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ControlStructures {
    uint256[] public numbers;
    string public result;

    constructor(bool _condition) {
        if (_condition) {
            result = "Condicion TRUE";
        } else {
            result = "Condicion FALSE";
        }

        for (uint8 index = 0; index < 10; index++) {
            numbers.push(index);
        }
    }
}
