// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Auth from the access-control subdirectory
// import "./Auth.sol"; local import
import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable{
    uint256 private _value;
    // Auth private _auth; // auth class as data type?  

    event ValueChanged(uint256 value);

    function store(uint256 value) public onlyOwner {
        // Require that the caller is registered as an administrator in Auth
        // require(_auth.isAdministrator(msg.sender), "Unauthorized");

        _value = value;
        emit ValueChanged(value);
    }

    function retrieve() public view returns (uint256) {
        return _value;
    }
}