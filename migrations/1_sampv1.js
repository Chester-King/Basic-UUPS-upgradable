// const Migrations = artifacts.require("Migrations");

const samp = artifacts.require('samp');
const samp2 = artifacts.require('samp2');

const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

module.exports = async(deployer) => {
    const sampInstance = await deployProxy(samp, { kind: 'uups' })
    console.log(sampInstance.address)
        // deployer.deploy(Migrations);

};