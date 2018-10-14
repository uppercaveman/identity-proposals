pragma solidity ^0.4.24;

contract ERC725 {
    event Executed(address indexed to, uint256 indexed value, bytes data);
    event ExecutionFailed(address indexed to, uint256 indexed value, bytes data);

    function execute(address _to, uint256 _value, bytes _data) public returns (bool _success);
    function setDelegate(bytes32 delegateType, address delegate) public;
    function getDelegate(bytes32 delegateType) public view returns (address delegate);
}
