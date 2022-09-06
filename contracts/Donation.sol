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

  receive() external payable {
    donation  = Donation(
      msg.sender,
      msg.value
    );

    donations.push(donation);
    totalDonations += msg.value;
  }
  // receive donations in Ether  
  function getDonations() external view returns (Donation[] memory) {
    return donations;
  }
  // show total donations in Ether
  function getTotalDonations() external view returns (uint256) {
    return totalDonations;
  }
}