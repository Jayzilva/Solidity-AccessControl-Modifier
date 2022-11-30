// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract BasicAccessControl{
    address public admin; //state varible- store inside the blockchain

    constructor() {
        admin = msg.sender; //assign to admin the address of the sender of this transaction
    }

    //everybody can access this
    function publicFunction() external{

    }

    //with access control
    function privateFunction() external onlyAdmin(){
      

    }

    //with access control
    function privateFunction2() external onlyAdmin(){
      

    }


    modifier onlyAdmin() {
      require(msg.sender == admin, "Only admin"); //is the sender the admin- if it is not desplay the error
        _; // the function is attached to the modifier
    }
}