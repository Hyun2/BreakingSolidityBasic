// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
storage : 함수 밖의 변수, 함수들, 즉 영속적으로 저장 되는 데이터가 스토리지에 저장됩니다. 가스 비용이 비쌉니다.
memory: 함수의 파라미터, 리턴값, 레퍼런스 타입이 저장 됩니다.
그러나, storage 처럼 영속적이지 않고, 함수내에서만 유효하기에 storage보다 가스 비용이 싸답니다.

Colldata : 주로 external function 의 파라메터에서 사용 됩니다.
stack:  EVM (Ethereum Virtual Machine) 에서 stack data를 관리할때 쓰는 영역인데 1024Mb 제한적입니다.이 컨트랙을 상속받은 자식 컨트랙도 접근가능)
*/

contract lec7 {
    function get_string(string memory _str)
        public
        pure
        returns (string memory)
    {
        return _str;
    }

    // 파라미터로 사용된 _uint 변수는 기본적으로 memory에 저장되기 때문에 별도로 명시할 필요 X
    function get_uint(uint256 _uint) public pure returns (uint256) {
        return _uint;
    }
}
