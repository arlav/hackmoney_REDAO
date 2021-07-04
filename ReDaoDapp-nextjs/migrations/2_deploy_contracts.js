const RealEstate = artifacts.require("RealEstate");

module.exports = function (deployer) {
  deployer.deploy(RealEstate);
};
