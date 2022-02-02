// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract OpensourceducationMembers {
  struct Members {
    string name;
    string memberType;
  }
  mapping(address => Members) private members;
  mapping(address => bool) private joinedMembers;
  address [] totalMembers;
}