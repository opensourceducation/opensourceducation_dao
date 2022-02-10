// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TokenNoFungible is ERC721 {
  constructor(address walletDirection, calldata string fullname, calldata string nickname, uint id){
    _mint(walletDirection, id);
    ERC721("opensourceducation_honoris_to_" + fullname + "_" + nickname);
  }
}