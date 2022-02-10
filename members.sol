// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "./vote.sol";
import "@nomiclabs/buidler/console.sol";

contract OpensourceducationMembers is Vote {
  enum MemberType { Honoris, HonorisAdmin }

  struct Member {
    string nameOrNickName;
    MemberType typeOfMember; 
    bool recivePayments;
  }
  mapping(address => Member) private members;
  mapping(address => bool) private isAdminMember;
  mapping(address => bool) private isMember;
  address payable [] recivePaymentsAddress;
  address payable [] reciveStakingPaymentsAddress;
  mapping(address => bool) private memberVote;
  mapping(address => Member) private proposedMembers;

  bool proposedMember;
  bool proposedAdminMember;

  constructor(string memory _nameOrNickName){
    isAdminMember[msg.sender] = true;
    isMember[msg.sender] = true;
    Member storage member = members[msg.sender];
    member.nameOrNickName = _nameOrNickName;
    member.typeOfMember = MemberType.HonorisAdmin;
    member.recivePayments = true;
    reciveStakingPaymentsAddress.push(payable(msg.sender));
    recivePaymentsAddress.push(payable(msg.sender)); 
  }

  function getMembers(address _direction) public view returns(Member memory _member) {
    return members[_direction];
  }

  function proposeMember(string memory _nameOrNickName, string memory _direction) public isAMember memberProposed {
    proposedMember = true;
  }

  function addMember(string memory _nameOrNickName, string memory _direction, bool honorisAdmin) private {

  }

  function proposeAdminMember(string memory _nameOrNickName, string memory _direction) public isAMember adminMemberProposed {
    proposedAdminMember = true;
  }

  
  modifier memberProposed {
    require(proposedMember == true, "There are already a votation to choose a new honoris member");
    _;
  }

  modifier adminMemberProposed {
    require(proposedAdminMember == true, "There are already a votation to choose a new honoris admin member");
    _;
  }
  

  modifier isAMember {
    require(isMember[msg.sender] == true, "This transaction require to a member to be succesfull");
    _;
  }

  modifier isAnAdminMember {
    require(isAdminMember[msg.sender] == true, "This transaction require to an Admin member to be succesfull");
    _;
  }


}