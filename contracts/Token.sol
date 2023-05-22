// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// import "hardhat/console.sol";
	import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    constructor() ERC20 ("Nodle Token", "NODL") {
        _mint(msg.sender, 1_000_000 * 10 * decimals());
    }
}
