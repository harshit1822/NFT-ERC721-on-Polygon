//SPDX-License-Identifier : MIT
pragma solidity ^0.8.9;

import { ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NonFunToken is ERC721, Ownable {


    constructor () ERC721 ("NonFunToken", "NONFUN") {}


   function mintNFT (address collector, uint256 tokenID) public onlyOwner(){
    _safeMint(collector, tokenID);
   }
}