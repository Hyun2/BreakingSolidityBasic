// SPDX-License-Identifier: MIT

// 이벤트는 해당 이벤트로 전달된 값들을 트랜잭션 로그에 저장(기록)하기 위해 사용됩니다.
// 이렇게 블록에 저장된 값들은 js 코드 등을 통해 불러와 확인 가능합니다.
pragma solidity >=0.8.0 <0.9.0;

contract lec13 {
    event info(string name, uint256 money);

    function sendMoney() public {
        emit info("KimDaeJin", 1000);
    }
}
