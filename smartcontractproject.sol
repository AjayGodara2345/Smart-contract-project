// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint256 public num;

    function setNum(uint256 _num) public {
        // Require that _num is greater than 0
        require(_num > 0, "Number must be greater than zero");

        // Set the value
        num = _num;
    }

    function assertExample() public pure returns (bool) {
        uint256 x = 10;
        uint256 y = 5;

        // Assert that x is greater than y
        assert(x > y);

        // This will never be reached if the assertion passes
        return true;
    }

    function revertExample(uint256 _amount) public pure returns (uint256) {
        // Example function using revert
        if (_amount <= 100) {
            revert("Amount must be greater than 100");
        }

        return _amount * 2;
    }
}

