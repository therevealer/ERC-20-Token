// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// import "hardhat/console.sol";
	import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {
    uint price = 0.01 ether;

    constructor() ERC20 ("Nodle Token", "NODL") {
        _mint(msg.sender, 1_000_000 * 10 * decimals());
    }

    // Users can burn their Tokens
    function burn (uint256 amount) external {
        _burn(msg.sender, amount);
    }

    //Users can mint new tokens by paying ether
    function buy () external payable {
        require(msg.value > 0, "You have to send some Ether");
        _mint(msg.sender, msg.value * 10 ** decimals() / price);
    }
}
