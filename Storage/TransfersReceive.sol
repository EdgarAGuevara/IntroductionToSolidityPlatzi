// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract TransfersReceive {
    //constructor() payable {}

    mapping(address => uint256) balances;

    uint256 public balanceSent;

    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    fallback() external payable {}

    function getBalance(uint256 number) public payable {
        balanceSent = msg.value;
    }
}
