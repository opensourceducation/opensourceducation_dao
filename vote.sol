// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './members.sol';

contract Vote is OpensourceducationMembers {

  mapping(address => bool) private votes;
  uint trueVotes;
  uint falseVotes;

  function vote(bool calldata myVote)public isAdminMember {
    votes[msg.sender] = myVote;
    if(myVote == true){
      trueVotes++;
    } else {
      falseVotes--;
    }
  }

  function createHonorisVotation(){}

  function createAdminVotation(){}


}


// cualquier miembro Admin puede iniciar una votacion

// Si la votacion es exitosa, se puede añadir un nuevo miembro