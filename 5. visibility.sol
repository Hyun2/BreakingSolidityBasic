// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/*
state variable들의 default visibility는 internal 입니다.

visibility는 변수와 함수에 적용됩니다.

public : 내부/외부에서 모두 접근 가능
external : 외부에서만 접근 가능, 내부에서 접근하려면 this.function_name() 형태로 접근해야 합니다. state variable은 external로 선언 불가
private: 오직 내부에서만 접근 가능(상속받은 컨트랙트에서도 접근 불가)
interal : 내부와 상속받은 컨트랙트에서 접근 가능

https://www.tutorialspoint.com/solidity/solidity_contracts.htm
*/
contract lec5 {
    //1.public
    uint256 public a = 3;

    //2.private
    uint256 private a2 = 5;
}

contract Public_example {
    uint256 public a = 3;

    function changeA(uint256 _value) public {
        a = _value;
    }

    function get_a() public view returns (uint256) {
        return a;
    }
}

contract Public_example_2 {
    Public_example instance = new Public_example();

    function changeA_2(uint256 _value) public {
        instance.changeA(_value);
    }

    function use_public_example_a() public view returns (uint256) {
        return instance.get_a();
    }
}

contract private_example {
    uint256 private a = 3;

    function get_a() public view returns (uint256) {
        return a;
    }
}

contract external_example {
    uint256 private a = 3;

    function get_a() external view returns (uint256) {
        return a;
    }
}

contract external_example_2 {
    external_example instance = new external_example();

    function external_example_get_a() public view returns (uint256) {
        return instance.get_a();
    }
}
