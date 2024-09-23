// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage{
    uint256 public  myFavouriteNumber;

    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    
    //dynamic array
    Person[] public listOfPeople; // []
    mapping (string => uint256) public nameToFavouriteNumber;

    function store(uint256 _myFavouriteNumber)public virtual  {
        myFavouriteNumber = _myFavouriteNumber;
    }

    function retrieve() public view returns (uint256){
        return myFavouriteNumber;
    }
   //memory, calldata, storage
   function addPeople(uint256 _favouriteNumber, string memory _name)public {
    listOfPeople.push(Person(_favouriteNumber, _name));

    //using name to get favourite number
    nameToFavouriteNumber[_name] = _favouriteNumber;
   }
}