// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Defining the interface (an incomplete smart contract) of the further used functions
interface DaiToken {
    function transfer(address to, uint amount) external returns(bool);
}

contract DaiFaucet {
    // Recieve the dai-tokens to be used for the faucet
    // receive() external payable {}

    // Reference to the Dai token created and stored in a state variable
    DaiToken daiToken = DaiToken(0x6B175474E89094C44Da98b954EedeAC495271d0F);

    // function to handle the withdrawls (transfer Dai to the caller)
    function withdrawDai() public {
        // payable(msg.sender).transfer(withdraw_amount);
        daiToken.transfer(msg.sender, 100);
    }
}