// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract BellTower {
    // counter for how many times the bell has been rung
    uint public bellRung;
    
    //event for ringing a bell
    event BellRung(uint rangForTheNthTime, address whoRangIt);

    function ringTheBell() public{
        bellRung++;

        emit BellRung(bellRung, msg.sender);
    }
}