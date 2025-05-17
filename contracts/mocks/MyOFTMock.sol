// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import { Web3LancerToken } from "../MyOFT.sol";

/// @dev Mock for testing Web3LancerToken minting and cross-chain logic. DO NOT use in production.
contract Web3LancerTokenMock is Web3LancerToken {
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) Web3LancerToken(_name, _symbol, _lzEndpoint, _delegate) {}

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }
}
