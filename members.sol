// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract OpensourceducationMembers {
  struct Member {
    string nameOrNickName;
    string memberType; /** Honoris || Honoris Admin */
    bool recivePayments;
  }
  mapping(address => Member) private members;
  mapping(address => bool) private isAdminMember;
  mapping(address => bool) private isMember;
  address payable [] recivePaymentsAddress;
  address payable [] reciveStakingPaymentsAddress;
  mapping(address => bool) private memberVote;
  mapping(address => Member) private proposedMembers;

  constructor(string memory _nameOrNickName){
    isAdminMember[msg.sender] = true;
    isMember[msg.sender] = true;
  }

  modifier isAMember(){
    require(isMember[msg.sender] == true, "This transaction require to a member to be succesfull");
    _;
  }

  modifier isAnAdminMember(){
    require(isAdminMember[msg.sender] == true, "This transaction require to an Admin member to be succesfull");
    _;
  }
}