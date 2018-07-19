pragma solidity ^0.4.24;

contract Sender
{
    address creator;

    constructor() public
    {
        creator = msg.sender;
    }

    function send(address _receiver) public payable
    {
        _receiver.transfer(msg.value);
    }

    function kill() public
    {
        if (msg.sender == creator)
            selfdestruct(creator);
    }
}