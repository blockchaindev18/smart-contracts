// SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract KekiusMaximus is ERC20 {

    uint256 public constant INITIAL_SUPPLY = 100_000_000 * 10 ** 18;

    constructor(address initialOwner)
        ERC20("Kekius Maximus", "KKM")
    {
        _mint(initialOwner, INITIAL_SUPPLY);
    }
}