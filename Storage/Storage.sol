// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Storage {
    string private name;

    //You will use type "storage" when to wanna indicate the value come from strut,array or string
    //commonly you'll use memory
    constructor(string memory word) {
        name = word;
    }
}
