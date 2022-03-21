// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.7.0;

contract HelloWorld {

    // Pure functions ensures that the function does not read or modify the state.
    function get() public pure returns (string memory){
        return 'Hello World';
    }
}
