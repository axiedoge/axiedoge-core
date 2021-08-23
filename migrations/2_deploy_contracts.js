const ConvertLib = artifacts.require("ConvertLib");
const Axiedoge = artifacts.require("Axiedoge");

module.exports = function(deployer) {
    deployer.deploy(ConvertLib);
    deployer.link(ConvertLib, MetaCoin);
    deployer.deploy(Axiedoge);
};