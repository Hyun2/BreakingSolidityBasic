// SPDX-License-Identifier:GPL-30
pragma solidity >=0.7.0 <0.9.0;

// super는 부모 컨트랙트를 가리킵니다.

contract Father {
    event FatherName(string name);

    function who() public virtual {
        emit FatherName("KimDaeho");
    }
}

contract Mother {
    event MotherName(string name);

    function who() public virtual {
        emit MotherName("leeSol");
    }
}

contract Son is Father {
    event sonName(string name);

    function who() public override {
        super.who();
        emit sonName("KimJin");
    }
}
