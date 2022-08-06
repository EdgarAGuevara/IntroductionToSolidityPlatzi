// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Errors {
    address private owner;

    constructor() {
        owner = msg.sender;
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
        require(
            msg.sender == owner,
            "El usuario no es el creador del contrato"
        );
        _;
    }
}
