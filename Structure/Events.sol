// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Events {
    uint256[] public numbers;
    string public result;

    event NotificationOfCondition(bool condition);

    constructor(bool _condition) {
        if (_condition) {
            result = "Condicion TRUE";
        } else {
            result = "Condicion FALSE";
        }

        emit NotificationOfCondition(_condition);

        for (uint8 index = 0; index < 10; index++) {
            numbers.push(index);
        }
    }
}
