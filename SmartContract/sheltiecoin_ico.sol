// SPDX-License-Identifier: MIT 
// Sheltiecoin ICO

// Version of Solidity compiler
pragma solidity ^0.8.19;

contract sheltiecoin_ico {

    // Introducing the maximum number of Sheltiecoins available for sale
    uint public max_sheltiecoins = 1000000;

    // Introducing the USD to Sheltiecoins conversion rate
    uint public usd_to_sheltiecoins = 1000;

    // Introducing the total number of Sheltiecoins that have been bought by the investors
    uint public total_sheltiecoins_bought = 0;

    // Mapping from the investor address to its equity in Sheltiecoins and USD
    mapping(address => uint) equity_sheltiecoins;
    mapping(address => uint) equity_usd;

    // Checking if an investor can buy Sheltiecoins
    modifier can_buy_sheltiecoins(uint usd_invested) {
        require(usd_invested * usd_to_sheltiecoins + total_sheltiecoins_bought <= max_sheltiecoins);
        _;
    }

    // Getting the equity in Sheltiecoins of an investor
    function equity_in_sheltiecoins(address investor) external view returns (uint) {
        return equity_sheltiecoins[investor];
    }

    // Getting the equity in USD of an investor
    function equity_in_usd(address investor) external view returns (uint) {
        return equity_usd[investor];
    }
    
}
