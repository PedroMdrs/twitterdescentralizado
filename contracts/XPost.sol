// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "hardhat/console.sol";

contract XPost {
  uint256 totalPosts;

  constructor(){
    console.log('post x');
  }

  function createPost() public {
    totalPosts += 1;
    console.log("%s criou o post", msg.sender);
  }

  function getTotalPosts() public view returns (uint256){
    console.log("eu tenho %d posts", totalPosts);
    return totalPosts;
  }
}