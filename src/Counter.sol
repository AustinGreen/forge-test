// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

contract Counter {
    uint256 public count;

    function increment() external {
        count += 1;
    }

    function decrement() external {
        count -= 1;
    }
}
