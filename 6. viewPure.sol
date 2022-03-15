// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
view : 함수 외부의 state variable을 순수하게 보기(view)만 할 때 사용, 즉 변경 불가능
https://www.tutorialspoint.com/solidity/solidity_view_functions.htm

pure : 함수 외부의 state variable은 사용하지 않고 순수(pure)하게 함수 내부에서 변수를 선언하여 로직을 구성할 때 사용
https://www.tutorialspoint.com/solidity/solidity_pure_functions.htm
viwe 와 pure 둘다 명시 안할때: function 밖의 변수들을 읽어서, 변경을 해야함.이 정의된 현재 이 컨트랙을 상속받은 자식 컨트랙도 접근가능)
*/
contract lec6 {
    uint256 public a = 1;

    function viewExample() public view returns (uint256) {
        return a + 2;
    }

    function readAndChangeA() public returns (uint256) {
        a = 3;
        return a + 2;
    }

    function pureExample() public pure returns (uint256) {
        uint256 a2 = 3;
        return a2 + 2;
    }
}
