// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Donation {
    address owner;
    uint256 totalDonations;

    struct Donation {
        address donor;
        uint256 amount;
    }
    Donation donation;
    Donation[] donations;

    constructor() {
        owner = msg.sender;
    }
}