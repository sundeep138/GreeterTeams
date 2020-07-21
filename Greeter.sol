// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Greeter {
    string private _greeting;
    address private _owner;
    bytes32[] showArray;
    bytes32[5] showFixedArray;
    struct Profile {
        string firstName ;
        string lastName;
        string city;
    }
    Profile contact;
    constructor () public{
        _owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == _owner, "Only Owner is allowed");
        _;
    }
    function greet() external view returns (string memory ){
        return _greeting;
    }
    function setGreeting(string memory greeting) public  onlyOwner {
        _greeting = greeting;

    }
    function owner() public view returns(address){
        return _owner;
    }
    function kill() public
    {
        if (msg.sender == _owner)
        selfdestruct(msg.sender);
    }
    function fillArray() public {
        showFixedArray[0] = "Test1";
        showArray.push("Test2");
        return;
    }
    function setProfile() public {
      contact = Profile('Sundeep', 'Khisty', 'Sydney');
    }
    function getProfile() public view returns (string memory) {
        return contact.firstName;
    }
function payGreeter(uint256 NameID) public payable returns (uint256){
    return NameID;
}
}
