pragma solidity ^0.4.24;

contract Gambler
{
    function addFund() public payable {
        // Thank you.
    }

    function () public payable {
        if (msg.value == 0) {
            return;
        }

        uint256 gamble = uint256(keccak256(block.timestamp, msg.sender)) % 100;
        // 51% winning chance.
        if (gamble <= 50) {
            msg.sender.transfer(2 * msg.value);
        }
    }
}