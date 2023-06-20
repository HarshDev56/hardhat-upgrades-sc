// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract BoxV2 {
    uint256 internal value;

    event ValueChanged(uint256 newValue);

    function stora(uint256 newValue) public {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrive() public view returns (uint256) {
        return value;
    }

    function version() public view returns (uint256) {
        return 2;
    }

    function increment() public returns (uint256) {
        value = value + 1;
        emit ValueChanged(value);
    }
}
