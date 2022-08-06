// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Not-Fungiable tokenns = ERC-721
// TokenUri contain no technique information, so contains something like how it looks."estetica and visual"
contract NotFungiableToken is ERC721("TokenNoFungible", "TNF") {
    constructor() {
        _mint(msg.sender, 1);
    }
}
