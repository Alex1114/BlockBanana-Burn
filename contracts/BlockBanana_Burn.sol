//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

interface BlockBananaInterface {
  function burn(address account, uint256 quantity) external;
}

contract BlockBanana_Burn is Ownable, ERC1155{

	address BlockBananaAddress = 0x6B5C9289B62415435cEDE32813B1C6EF0E08A903;
	BlockBananaInterface BlockBananaContract = BlockBananaInterface(BlockBananaAddress);

	using SafeMath for uint256;
	using Strings for uint256;

	// Variables
	// ------------------------------------------------------------------------
	string private _name = "BB"; //
	string private _symbol = "BB"; //

	// Constructor
	// ------------------------------------------------------------------------
	constructor()ERC1155("https://gateway.pinata.cloud/ipfs/Qmak7SQmUrh9ujcBLu6DdJwYU7Wtyp1gx67iuHFR4woJ7o"){}
	
	function name() public view virtual returns (string memory) {
		return _name;
	}

	function symbol() public view virtual returns (string memory) {
		return _symbol;
	}

	// Burn functions
	// ------------------------------------------------------------------------
    function burn(address account, uint256 quantity) public virtual{
        BlockBananaContract.burn(account, quantity);
		_mint(account, 1, quantity, "");
    }

}
