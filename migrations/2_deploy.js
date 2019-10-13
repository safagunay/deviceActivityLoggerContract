var DeviceActivityLogger = artifacts.require("./DeviceActivityLogger.sol");
module.exports = function(deployer) {
  deployer.deploy(DeviceActivityLogger);
};