// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

// 0x065C83d27EA16Fb4dcb08B09Ed07bDF854106545
contract GameItems is ERC1155 {
    uint256 public constant CHARIZARD = 0;
    uint256 public constant IVYSAUR = 1;
    uint256 public constant VENUSAUR = 2;
    uint256 public constant CHARMANDER = 3;

    constructor() public ERC1155("https://bafybeihul6zsmbzyrgmjth3ynkmchepyvyhcwecn2yxc57ppqgpvr35zsq.ipfs.dweb.link/{id}.json") {
        _mint(msg.sender, CHARIZARD, 100, "");
        _mint(msg.sender, IVYSAUR, 100, "");
        _mint(msg.sender, VENUSAUR, 100, "");
        _mint(msg.sender, CHARMANDER, 100, "");
    }

    function uri(uint256 _tokenId) override public view returns (string memory) {
        return string(
            abi.encodePacked(
                "https://bafybeihul6zsmbzyrgmjth3ynkmchepyvyhcwecn2yxc57ppqgpvr35zsq.ipfs.dweb.link/",
                Strings.toString(_tokenId),
                ".json"
            )
        );
    }
}