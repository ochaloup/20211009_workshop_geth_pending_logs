// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title EchoContract
 * @dev Implements simple event to be logged.
 */
contract EchoContract {
    
    event Echo(
        address indexed _from,
        uint _counter
    );

    uint public counter = 0;
    
    fallback() external { 
        counter++;
        emit Echo(msg.sender, counter);
    }
}