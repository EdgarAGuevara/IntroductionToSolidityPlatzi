// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Mappings {
    mapping(address => uint256) public balance;
    enum Status {
        STARTED,
        ENDED
    }

    Status public contractStatus;

    constructor() {
        contractStatus = Status.STARTED;

        balance[msg.sender] = 1000;
        contractStatus = Status.ENDED;
    }
}
