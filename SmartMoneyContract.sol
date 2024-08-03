//SPDX-License-Identifier: MIT


pragma solidity 0.8.26;

contract SmartMoney{

    uint public balanceRecieved ;


    function getBalance() public view returns(uint) {
        return address(this).balance ;
    }

    function deposite()public payable {
        balanceRecieved += msg.value;
    }

    // send all balance to this person who call this func
    function withdrawToAll()public {
        address payable to = payable(msg.sender);
        to.transfer(getBalance());
    }

    function withdrawToAddress(address payable to)public {
         to.transfer(getBalance());
    }



}

