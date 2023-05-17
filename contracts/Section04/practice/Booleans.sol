// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title Booleans Typeを学ぼう
 */
contract Booleans {
    /// @dev Boolean型にはtrueまたはfalseが入る
    bool public t1 = true;
    bool public f1 = false;

    /// @dev 反転
    bool public f2 = !t1;
    bool public t2 = !f1;

    /// @dev 論理積
    bool public c1 = t1 && t2; // conjunction
    bool public c2 = t1 && f1;
    bool public c3 = f1 && t1;
    bool public c4 = f1 && f2;

    /// @dev 論理和
    bool public d1 = t1 || t2; // disjunction
    bool public d2 = t1 || f1;
    bool public d3 = f1 || t1;
    bool public d4 = f1 || f2;

    /// @dev 同値チェック結果(true|false)を設定
    bool public e1 = (t1 == t2); // equality
    bool public e2 = (t1 == f1);

    /// @dev 不同値チェック結果(true|false)を設定
    bool public i1 = (t1 != t2); // inequality
    bool public i2 = (t1 != f1);
}
