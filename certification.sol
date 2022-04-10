pragma solidity ^0.4.24;
contract Certificate {
 address public contractOwner;
 address public sendToAccount;
 string public ipfsHash;
 string public description;
 string public active;
 constructor(address _sendToAccount, string _ipfsHash, string
_description) public {
 contractOwner = msg.sender;
 sendToAccount = _sendToAccount;
 ipfsHash = _ipfsHash;
 description = _description;
 active = "true";
 }

 function setCertificate(string _ipfsHash, string _description) public
{
 if (msg.sender != contractOwner) { revert(); }
 ipfsHash = _ipfsHash;
 description = _description;
 }

 function setActive(string _active) public {
 if (msg.sender != contractOwner) { revert(); }
 active = _active;
 }
}