pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "../node_modules/@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

contract samp is Initializable,UUPSUpgradeable,OwnableUpgradeable{
    function initialize() public initializer {
        __Ownable_init();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner{
        
    }
    
    function retvalue() pure public virtual returns(string memory){
        return("v1");
    }

}

contract samp2 is samp{
    function retvalue() pure public virtual override returns(string memory){
        return("v2");
    }
}