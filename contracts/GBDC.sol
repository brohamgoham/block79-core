// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./utils/ERC20.sol";

contract GBDC is ERC20 {
    constructor () ERC20("Gold Backed Digital Currency", "GBDC", 18) {
        uint256 initialSupply = 100000000000000000000000;
        _mint(msg.sender, initialSupply);
    }

    function mint(uint256 amount) public returns (bool) {
        _mint(_msgSender(), amount);

        return true;
    }
    
}