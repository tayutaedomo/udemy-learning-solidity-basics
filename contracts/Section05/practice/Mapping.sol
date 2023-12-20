// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/**
 * @title Mapping Type を学ぼう
 */
contract Mapping {
    /** @dev
     * Mapping型は mapping(_KeyType => _ValueType) という構文を使う
     * Mapping型の変数は mapping(_KeyType => _ValueType) _VariableName という構文を使って宣言する
     * KeyTypeには、組み込みのValueType(値型)、bytes、string、またはcontractやenum型を指定することができます。
     * マッピング、構造体、配列型など、他のユーザー定義型や複雑な型は使用できません。
     * ValueTypeは、マッピング、配列、構造体を含む任意の型にすることができます。
     */

    uint id;
    // Mapping型定義
    mapping(uint => address) public member;

    struct Profile {
        string name;
        uint level;
    }

    // Mapping型の_valueTypeにMapping型も指定可能
    mapping(uint => mapping(address => Profile)) memberProfile;

    function addMember() public {
        member[id] = msg.sender;
        id++;
    }

    function getMemberProfile(uint id_) public view returns (Profile memory) {
        return memberProfile[id_][msg.sender];
    }

    function setMemberProfile(
        uint id_,
        string memory name_,
        uint level_
    ) public {
        require(member[id_] == msg.sender);
        memberProfile[id_][msg.sender] = Profile(name_, level_);
    }

    function delMemberProfile(uint id_) public {
        require(member[id_] == msg.sender);
        // delete で要素を削除
        delete memberProfile[id_][msg.sender];
    }
}
