// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

// 프로그래밍(데이터베이스)에서 index는 기본적으로 어떤 데이터를 빠르게 찾기 위해 사용되는 키워드입니다.
// 마찬가지로 스마트 컨트랙트에서 indexed는 특정한 이벤트를 빠르게 찾기 위한 키워드입니다.

contract lec14 {
    event numberTracker(uint256 num, string str);
    event numberTracker2(uint256 indexed num, string str);

    uint256 num = 0;

    function PushEvent(string memory _str) public {
        emit numberTracker(num, _str);
        emit numberTracker2(num, _str);
        num++;
    }
}
