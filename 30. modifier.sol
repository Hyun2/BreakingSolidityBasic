// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// modifier는 함수에 전제조건(if, require 등)을 추가하여 함수의 동작을 수정시킵니다.

contract lec30 {
    modifier onlyAdults() {
        revert("You are not allowed to pay for the cigarette");
        _;
    }

    function BuyCigarette() public pure onlyAdults returns (string memory) {
        return "Your payment is succeeded";
    }

    modifier onlyAdults2(uint256 _age) {
        require(_age > 18, "You are not allowed to pay for the cigarette");
        _;
    }

    function BuyCigarette2(uint256 _age)
        public
        pure
        onlyAdults2(_age)
        returns (string memory)
    {
        return "Your payment is succeeded";
    }

    uint256 public num = 5;
    modifier numChange() {
        num = 10;
        _;
    }

    function numChangeFunction() public numChange {
        num = 15;
    }
}
