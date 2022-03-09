const { ethers } = require("hardhat");

const NFT = artifacts.require("BlockBanana_Burn");

module.exports = async ({
  getNamedAccounts,
  deployments,
  getChainId,
  getUnnamedAccounts,
}) => {
  const {deploy, all} = deployments;
  const accounts = await ethers.getSigners();
  const deployer = accounts[0];
  console.log("");
  console.log("Deployer: ", deployer.address);

  nft = await deploy('BlockBanana_Burn', {
    contract: "BlockBanana_Burn",
    from: deployer.address,
    args: [
    ],
  });

  console.log("BlockBanana_Burn address: ", nft.address);
};

module.exports.tags = ['BlockBanana_Burn'];