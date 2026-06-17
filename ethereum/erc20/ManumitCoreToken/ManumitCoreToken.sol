// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ManumitCoreToken is ERC20, Ownable {

    uint256 public constant TOTAL_SUPPLY =
        6_000_000_000 * 10 ** 18;

    uint256 public constant UNLOCKED_SUPPLY =
        4_500_000_000 * 10 ** 18;

    uint256 public constant LOCKED_SUPPLY =
        1_500_000_000 * 10 ** 18;

    uint256 public constant LOCK_DATE = 1846713600;

    bool public lockedTokensReleased;

    event LockedTokensReleased(
        address indexed receiver,
        uint256 amount
    );

    constructor(
        address initialOwner
    )
        ERC20("MANUMIT CORE", "MMC")
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