// SPDX-License-Identifier: MIT
pragma solidity >=0.8.10;
import "./NFT.sol";

contract NFTFactory {
    
    event NFTContractCreated(
        address nftContractAddress
    );

    function createNFTContract(
        string memory name,
        string memory symbol,
        uint256 price
    ) external {
        NFT nft = new NFT(
            name,
            symbol,
            price
        );

        emit NFTContractCreated(address(nft));
        
    }

}