// SPDX-License-Identifier: GPL-3.0

// add2는 함수를 선언할 때 return 변수를 명시함으로써 함수 바디에서 return 생략 가능

pragma solidity >=0.7.0 <0.9.0;

contract lec29 {
    function add(uint256 _num1, uint256 _num2) public pure returns (uint256) {
        uint256 total = _num1 + _num2;
        return total;
    }

    function add2(uint256 _num1, uint256 _num2)
        public
        pure
        returns (uint256 total)
    {
        total = _num1 + _num2;
    }
}
