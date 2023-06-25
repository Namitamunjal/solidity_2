// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
contract test{
    function one(uint a)public pure {

        require(a>10,"It is not greater than 10");
        //if condition fails, function execution terminated and second parameter is displayed in the logs
    }
    function two(uint b)public pure{
        assert(b>10);
        //if the execution fails, function execution teminates with an error message
        
    }
    function three(uint c)public pure{
        if(c<10){
            //revert helps in saving gas
            revert("It is not greater than 10"); //remaining gas is returned
        }
    }
}
