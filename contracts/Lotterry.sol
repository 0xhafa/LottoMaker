// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract LottoMaker {

    constructor() {

    }

    enum Phase {
        OPEN,
        CLOSED,
        FINISHED
    }

    struct Lottery {
        uint256 id;
        uint256 deadline;
        uint256 createdAt;
        uint256 players;
        uint256 prize;
        uint256 price;
        uint8 takeRate;
        Phase status;
    }

    mapping(uint256 => Lottery) private LottoMap;
    Lottery[] private LottoArray;

    event LottoCreated(   uint256 id,
        uint256 deadline,
        uint256 createdAt,
        uint256 initialPrize,
        uint256 price,
        uint8 takeRate);

    // Create Lotto
    function createLotto() public returns(Lottery) {

    }
    
    // Buy tickets

    // Get price

    // Get prize pool

    // Run lottery

    // Withdraw prize

    // Withdraw takeRate
}