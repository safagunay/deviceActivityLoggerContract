pragma solidity >=0.4.22 <0.6.0;

contract AccessContract{
    uint256 public successAccessCount = 0;
    uint256 public unSuccessAccessCount = 0;
    struct AccessModel{
        string _accessName;
        string _accessTime;
    }
    mapping(uint => AccessModel) public successAccessMap;
    mapping(uint => AccessModel) public unSuccessAccessMap;
    
    function addSuccessPerson(string memory _accessName, string memory accessTime) public{
        successAccessMap[successAccessCount] = AccessModel(_accessName, accessTime);
        successAccessCount++;
    }
    
    function addUnSuccessPerson(string memory _accessName, string memory accessTime) public{
        unSuccessAccessMap[unSuccessAccessCount] = AccessModel(_accessName, accessTime);
        unSuccessAccessCount++;
    }
    
    function getOneSuccessAccessName(uint256 successId) public returns (string memory){
        return ( successAccessMap[successId]._accessName);
    }
    
    function getOneSuccessAccessTime(uint256 successId) public returns (string memory){
        return (successAccessMap[successId]._accessTime);
    }
    
    function getOneUnSuccessAccessName(uint256 unSuccessId) public returns (string memory){
       return (unSuccessAccessMap[unSuccessId]._accessName);
    }
    
    function getOneUnSuccessAccessTime(uint256 unSuccessId) public returns (string memory){
        return (unSuccessAccessMap[unSuccessId]._accessTime);
    }
    
    function getSuccessAccessNumber() public returns(uint256){
        return successAccessCount;
    }
    
    function getUnSuccessAccessNumber() public returns(uint256){
        return unSuccessAccessCount;
    }
    
    
}
