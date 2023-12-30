// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/**
 * @title 数学的なファンクション、ハッシュ化ファンクションを学ぼう
 */

contract MathematicalCryptographicFunction {
    // (x + y) % k
    function addMod(uint x_, uint y_, uint k_) public pure returns (uint) {
        return addmod(x_, y_, k_);
    }

    // (x * y) % k
    function mulMod(uint x_, uint y_, uint k_) public pure returns (uint) {
        return mulmod(x_, y_, k_);
    }

    /**
     * @dev Solidityでは、ハッシュ関数はまずデータの入力がエンコードされている必要がある
     * hash化するinput dataはハッシュ後の衝突を避けるためにabi.encodeを使った方が良い。
     */
    // Keccak-256ハッシュ
    // aaa,bbb: 0x9442fc109939c1323c53a3cb213beb6cdfb43a710c6de6098270610f6b9e15d9
    // aa,abbb: 0x02f379c9d6d924b205efaa7e888b0cb4e1c0dcaf9d7ccc7688981022cc450884
    function keccak256Hash(
        string memory s1_,
        string memory s2_
    ) external pure returns (bytes32, bytes memory) {
        return (keccak256(abi.encode(s1_, s2_)), abi.encode(s1_, s2_));
    }

    // aaa,bbb: 0x5840157b56d7f5dcd237891d847bd255f3764fde7180351c2c3546b4c7e381f8
    // aa,abbb: 0x5840157b56d7f5dcd237891d847bd255f3764fde7180351c2c3546b4c7e381f8
    function keccak256Hash2(
        string memory s1_,
        string memory s2_
    ) external pure returns (bytes32, bytes memory) {
        return (
            keccak256(abi.encodePacked(s1_, s2_)),
            abi.encodePacked(s1_, s2_)
        );
    }

    // SHA-256ハッシュ
    function sha256Hash(
        string memory s1_,
        string memory s2_
    ) external pure returns (bytes32, bytes memory) {
        return (sha256(abi.encode(s1_, s2_)), abi.encode(s1_, s2_));
    }

    // RIPEMD-160ハッシュ
    function ripemd160Hash(
        string memory s1_,
        string memory s2_
    ) external pure returns (bytes32, bytes memory) {
        return (ripemd160(abi.encode(s1_, s2_)), abi.encode(s1_, s2_));
    }
}
