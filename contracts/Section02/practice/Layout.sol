// SPDX-License-Identifier: MIT

/**
 * @dev pragma 定義
 * 特定のコンパイラ機能またはチェックを有効にするために使用する
 */
pragma solidity ^0.8.17;
// 1 行コメント
import "hardhat/console.sol";

/**
 * @dev contract 定義
 * 1 ファイルに複数定義することも可能
 */
contract Layout {
    /// @dev デバックプリントすたるためだけのファンクション
    function logging() external view {
        /* 複数行コメント
           msg.sender はグローバル変数で Call または
           Transaction 発行元のアカウントアドレス
        */
        console.log(msg.sender);
    }
}

contract A {}
