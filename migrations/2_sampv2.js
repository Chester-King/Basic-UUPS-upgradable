// const Migrations = artifacts.require("Migrations");

const samp = artifacts.require('samp');
const samp2 = artifacts.require('samp2');

const { deployProxy, upgradeProxy } = require('@openzeppelin/truffle-upgrades');

module.exports = async(deployer) => {

    const samp2Instance = await upgradeProxy(samp, samp2);
    console.log(samp2Instance.address);
};