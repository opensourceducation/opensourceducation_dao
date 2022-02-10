// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0  <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenFungible is ERC20("tokenname", "MIN"){
  constructor(address contractDirection) {
    _mint(contractDirection, 10000000000);
  }
}