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

    function getBalance(address _receiver) public constant returns (uint Balance)
    {
        return _receiver.balance;
    }

    function getAddress(address _addr) public constant returns (address Address)
    {
        return _addr;
    }

    function getCreatorBalance() public constant returns (uint Balance)
    {
        return creator.balance;
    }

    function getCreatorAddress() public constant returns (address Address)
    {
        return creator;
    }

    function kill() public
    {
        if (msg.sender == creator)
            selfdestruct(creator);
    }
}