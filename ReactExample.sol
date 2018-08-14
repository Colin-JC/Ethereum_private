pragma solidity ^0.4.11;

contract ReactExample {
    
    string public you_awesome;
    string private secret;
    string private state;
    address private owner;
    bool public pseudoRandomResult;
    event ExperimentComplete (bool result);
    
    function ReactExample () public {   // Constructor, will be run when the contract is created
        owner = msg.sender;             // Owner is the address of who initiated the contract
        you_awesome = "You're awesome";
        secret = "secret data";
        state = "initial state";
    }
    
    function getSecret () public view returns (string) {
        return secret;
    }
    
    function getState () public view returns (string) {
        return state;
    }
    
    function setState (string newState) public payable {
        state = newState;
    }
    
    function kill () public {           // Will destroy the contract in case it is compromised
        require (msg.sender == owner);  // Only the owner can self destruct the contract
        selfdestruct (owner);           // Destroy the contract and forward the balance to the owner
    }
    
    function () public payable{         // Ensure the function can receive ether
        revert ();                      // gives back ether to whoever invokes this function
    }
    
    function setExperimentInMotion () public payable returns (bool) {
        bytes32 _pseudoRandomResult = keccak256 (msg.sender, msg.data, msg.value);
        if (_pseudoRandomResult > bytes32(10)) pseudoRandomResult = true;
        else pseudoRandomResult = false;
        
        ExperimentComplete (pseudoRandomResult);
    }
    
}