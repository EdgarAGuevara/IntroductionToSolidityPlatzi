// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Modificators {
    address private owner;
    string private ownerName;

    constructor(string memory _ownerName) {
        owner = msg.sender;
        ownerName = _ownerName;
    }

    function Sum(uint256 number1, uint256 number2)
        public
        view
        IsOwner
        returns (uint256)
    {
        return number1 + number2;
    }

    modifier IsOwner() {
        if (msg.sender != owner) revert();
        _;
    }
}
