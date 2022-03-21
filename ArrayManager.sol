// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.10;

contract ArrayManager{
    uint[] public Randoms; 
    uint[] public Rands = [4, 200, 7, 6, 8, 0, 1, 113];
    
    // view means you cannot change the state of the contract in that function.
    function GetItemRandoms(uint index) public view returns(uint){
        return Randoms[index];
    }

    // A common mistake is to declare a local variable (of struct, array or mapping) and assume that it will be created in memory, 
    // although it will be created in storage.
    
    // the keyword “memory” is used to hold temporary values. 
    // It is erased between (external) function calls and is cheaper to use.
    
    function GetRandoms() public view returns(uint[] memory){
        return Randoms;
    }

    function PushToRandoms(uint value) public{
        Randoms.push(value);
    }

    function PopFromRandoms() public returns(uint[] memory){
        Randoms.pop();
        return Randoms;
    }

    function RemoveFromRandoms(uint index) public{
        delete Randoms[index];
    }

    function GetRandomsLength() public view returns(uint){
        return Randoms.length;
    } 
}
