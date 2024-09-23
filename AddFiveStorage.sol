// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {SimpleStorage} from "./SimpleStorage.sol";

//contract interaction or inheritance
contract AddFiveStorage is SimpleStorage{

    //vitual and override
    function store(uint256 _Number) public override  {
       myFavouriteNumber = _Number + 5;
    }
}