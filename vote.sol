// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './members.sol';

contract Vote is OpensourceducationMembers {

  mapping(address => bool) private votes;
  int trueVotes;
  int falseVotes;

  function vote(){

  }



}


// cualquier miembro Admin puede iniciar una votacion

// Si la votacion es exitosa, se puede añadir un nuevo miembro