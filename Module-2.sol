// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Token {

    string public tokenName = "Moksh";
    string public tokenSymbol = "MK";
    uint256 public totalSupply = 0;

    mapping(address => uint256) public balances;

    function mint(address recipient, uint amount) public {
        totalSupply += amount;
        balances[recipient] += amount;
    }

    function burn(address account, uint amount) public {
        require(balances[account] >= amount, "Insufficient balance to burn");
        totalSupply -= amount;
        balances[account] -= amount;
    }
}