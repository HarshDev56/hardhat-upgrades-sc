// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Box {
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
        return 1;
    }
}
