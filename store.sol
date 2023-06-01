// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 < 0.9.0;

contract FirstStorage{
  uint256 public myNo;

  //bundling up different data types
  struct People {

    uint256 myNo;
    string name;

  }

  //creating an array
  People[] public people;
  
  //pinpointing a specific index in the array
  mapping(string => uint256) public nametomyNo;
  
  //storing a number and be able to alter it
  function store(uint256 NewNo)public{
    
    myNo = NewNo;

  }
    //viewing the stored number without altering it
  function Retrieve() public view returns(uint256){

      return(myNo);

  }
  //adding content to array
  function addPerson(string memory newname, uint256 NewNo) public{
    people.push(People(NewNo, newname));
    nametomyNo[newname] = NewNo;

  }
}

