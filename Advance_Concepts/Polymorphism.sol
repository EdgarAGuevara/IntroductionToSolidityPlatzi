// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Interfaces.sol";

// We could use a thing from a contract deployed in blockchain only if we have the address for it.
contract Polymorphism {
    function sumFromContract(
        uint256 number1,
        uint256 number2,
        address contractAddress
    ) public returns (uint256) {
        Interfaces interfaceSum = Interfaces(contractAddress);
        return interfaceSum.SumInterface(number1, number2);
    }
}
