// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.7.0;

contract HelloWorld {

    // pure means you cannot change the state in the function 
    // and denies the ability to read the state or storage variables.
    function get() public pure returns (string memory){
        return 'Hello World';
    }
}
