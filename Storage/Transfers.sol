// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Transfers {
    constructor() payable {}

    function transferBySend(address to, uint256 amount) public returns (bool) {
        bool result = payable(to).send(amount);
        return result;
    }

    function transferByTransfer(address to, uint256 amount)
        public
        returns (bool)
    {
        payable(to).transfer(amount);
    }

    function transferByCall(address to, uint256 amount) public returns (bool) {
        (bool result, bytes memory response) = to.call{value: amount}("");
        return result;
    }
}
