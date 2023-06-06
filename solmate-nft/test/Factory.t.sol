// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import "forge-std/Test.sol";
import "../src/NFTFactory.sol";

contract FactoryTest is Test {
    using stdStorage for StdStorage;

    NFTFactory private factory;

    function setUp() public {
        // Deploy Factory contract
        factory = new NFTFactory();
    }

    function test_CreateNFTContract() public {
        factory.createNFTContract("NFT_tutorial", "TUT", 80000000000000000);
    }

    
}


