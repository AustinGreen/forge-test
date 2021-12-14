// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.10;

import "ds-test/test.sol";
import "../Counter.sol";

contract ContractTest is DSTest {
    Counter counter;

    function setUp() public {
        counter = new Counter();
    }

    function testIncrement() public {
        require(counter.count() == 0);
        counter.increment();
        require(counter.count() == 1);
    }

    function testDecrement() public {
        require(counter.count() == 0);
        counter.increment();
        counter.increment();
        counter.decrement();
        require(counter.count() == 1);
    }
}
