// SPDX-License-Identifier:GPL-30
pragma solidity >=0.7.0 <0.9.0;

// 부모 컨트랙트의 함수(오버라이딩의 대상) -> virtual 키워드 명시
// 자식 컨트랙트의 함수(오버라이딩해서 새롭게 선언한 함수) -> override 키워드 명시

contract Father {
    string public familyName = "Kim";
    string public givenName = "Jung";
    uint256 public money = 100;

    constructor(string memory _givenName) {
        givenName = _givenName;
    }

    function getFamilyName() public view returns (string memory) {
        return familyName;
    }

    function getGivenName() public view returns (string memory) {
        return givenName;
    }

    // 오버라이딩의 대상이 되는 부모 컨트랙트의 메서드에 virtual 키워드 명시
    function getMoney() public view virtual returns (uint256) {
        return money;
    }
}

contract Son is Father("James") {
    uint256 public earning = 0;

    function work() public {
        earning += 100;
    }

    // 오버라이딩하는 자식 컨트랙트의 함수에는 override 키워드 명시
    function getMoney() public view override returns (uint256) {
        return money + earning;
    }
}
