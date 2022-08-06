// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ClassRoom {
    struct Student {
        string name;
        uint256 id;
    }

    Student[] public students;

    constructor() {
        students.push(Student({name: "Juan", id: 12345}));
    }
}
