// SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AureusCoreToken is ERC20, Ownable {

    uint256 public constant TOTAL_SUPPLY =
        10_000_000_000 * 10 ** 18;

    uint256 public constant UNLOCKED_SUPPLY =
        5_000_000_000 * 10 ** 18;

    uint256 public constant LOCKED_SUPPLY =
        5_000_000_000 * 10 ** 18;

    uint256 public constant LOCK_DATE = 1856371200;

    bool public lockedTokensReleased;

    event LockedTokensReleased(
        address indexed receiver,
        uint256 amount
    );

    constructor(
        address initialOwner
    )
        ERC20("Aureus Core", "ARC")
        Ownable(initialOwner)
    {
        require(
            initialOwner != address(0),
            "Invalid owner"
        );

        _mint(
            initialOwner,
            UNLOCKED_SUPPLY
        );

        _mint(
            address(this),
            LOCKED_SUPPLY
        );
    }

    function releaseLockedTokens()
        external
        onlyOwner
    {
        require(
            !lockedTokensReleased,
            "Already released"
        );

        require(
            block.timestamp >= LOCK_DATE,
            "Still locked"
        );

        lockedTokensReleased = true;

        _transfer(
            address(this),
            owner(),
            LOCKED_SUPPLY
        );

        emit LockedTokensReleased(
            owner(),
            LOCKED_SUPPLY
        );
    }

    function remainingLockTime()
        external
        view
        returns (uint256)
    {
        if (
            block.timestamp >= LOCK_DATE
        ) {
            return 0;
        }

        return LOCK_DATE - block.timestamp;
    }

    function lockedBalance()
        external
        view
        returns (uint256)
    {
        return balanceOf(
            address(this)
        );
    }
}