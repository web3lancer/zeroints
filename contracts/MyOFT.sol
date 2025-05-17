// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

/// @title Web3LancerToken (W3LT)
/// @notice Core omnichain token for the Web3Lancer platform.
/// @dev Extend this contract for platform-specific logic (escrow, rewards, jobs, etc.)
contract Web3LancerToken is OFT {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) OFT(_name, _symbol, _lzEndpoint, _delegate) Ownable(_delegate) {}
    // Future: Add hooks for escrow, milestone, and job modules here
}
