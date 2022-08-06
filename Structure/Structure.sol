// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CrowdFunding {
    int256 quantity;
    uint256 quantityWithoutSign;
    address owner;
    bool signed;

    constructor(bool _isSigned) {
        owner = msg.sender;
        signed = _isSigned;
    }
}
