// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//importing a contract
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
 SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}

