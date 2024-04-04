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

}
