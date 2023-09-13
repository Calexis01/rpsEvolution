// SPDX-License-Identifier: UNLICENSED 
pragma solidity ^0.8.0;

// Defining the contract and the options/outcomes of the game. 
contract RockPaperScissors {
    address public owner;
    enum Choice { None, Rock, Paper, Scissors}
    enum Result {None, UserWin, ComputerWin, Draw}

    // Storing and managing the state of the contract
    struct Game{

        address user;
        Choice userChoice;
        Choice computerChoice;
        Result result;
    }

    Game public currentGame; 
// 
    event GameResult(Result result, address winner);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }/*
