// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract OpensourceducationMembers {
  struct Member {
    string name;
    string memberType; /** Honoris || Honoris Admin */
    bool recivePayments;
  }
  mapping(address => Member) private members;
  mapping(address => bool) private isAdminMember;
  address [] recivePaymentsAddress;
  mapping(address => bool) private memberVote;
  mapping(address => Member) private proposedMembers;

  constructor(){
    isAdminMember[msg.sender] = true;
  }
}