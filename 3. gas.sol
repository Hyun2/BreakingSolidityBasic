// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
    1 ether = 10^9 gwei = 10^18wei
    0.000000000000000001 = 1^-18 =1wei
    0.01 ether = 10^16 gwei
*/
contract lec2 {
    uint256 public value = 1 ether;
    uint256 public value2 = 1 wei;
    uint256 public value3 = 1 gwei;
}

// gas가 필요한 이유
// 보안 측면에서 ddos 방지
// 네트워크의 노드들에게 보상
