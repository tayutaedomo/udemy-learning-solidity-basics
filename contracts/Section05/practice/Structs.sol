// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/**
 * @title Structs Type を学ぼう
 * Reference Typesに属する
 * Struct(構造体)の形で新しい型を定義できる、複数の変数をグループ化することができるカスタムタイプ
 * 構造体はそれ自身の型のメンバを含むことはできないが、構造体自体をMapping型のメンバの値型にしたり(Mapping(uint=>StructA))、
 * その型の動的なサイズの配列(以下Member[] public members)を含むことができる
 */
contract Structs {
    // 構造体定義
    struct Account {
        uint no;
        address addr;
    }

    Account public account =
        Account(1, 0x8626f6940E2eb28930eFb4CeF49B2d1F2C9C1199);

    // Account public account =
    //     Account({addr: 0x8626f6940E2eb28930eFb4CeF49B2d1F2C9C1199, no: 1});

    function getAccount() public view returns (uint) {
        return account.no;
    }

    function setAccount() external {
        account.addr = msg.sender;
    }
}
