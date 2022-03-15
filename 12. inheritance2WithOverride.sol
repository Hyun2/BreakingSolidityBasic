// SPDX-License-Identifier:GPL-30
pragma solidity >=0.7.0 <0.9.0;

// 상속 받는 두 개의 부모 컨트랙트에 동일한 함수(getMoney)가 존재하면, override하라는 에러가 발생합니다.
// override할 때에도 override라는 키워드만 전달하는 것이 아니라 override(Contract1, Contract2)와 같이 부모 컨트랙들을 명시해주어야 합니다.
contract Father {
    uint256 public fatherMoney = 100;

    function getFatherName() public pure returns (string memory) {
        return "KimJung";
    }

    function getMoney() public view virtual returns (uint256) {
        return fatherMoney;
    }
}

contract Mother {
    uint256 public motherMoney = 500;

    function getMotherName() public pure returns (string memory) {
        return "Leesol";
    }

    function getMoney() public view virtual returns (uint256) {
        return motherMoney;
    }
}

contract Son is Father, Mother {
    function getMoney() public view override(Father, Mother) returns (uint256) {
        return fatherMoney + motherMoney;
    }
}
