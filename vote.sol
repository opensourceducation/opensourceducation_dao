// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "@nomiclabs/buidler/console.sol";

contract Vote {

  mapping(address => bool) private votes;
  uint trueVotes;
  uint falseVotes;

  mapping(address => bool) private adminVotes;
  uint trueAdminVotes;
  uint falseAdminVotes;

  function _honorisVotation(bool _myVote) internal {
    votes[msg.sender] = _myVote;
    if(_myVote == true){
      trueVotes++;
    } else {
      falseVotes++;
    }
  }

  function _adminVotation(bool _myVote) internal {
    votes[msg.sender] = _myVote;
    if(_myVote == true){
      trueVotes++;
    } else {
      falseVotes++;
    }
  }


}




// cualquier miembro Admin puede iniciar una votacion

// Si la votacion es exitosa, se puede añadir un nuevo miembro