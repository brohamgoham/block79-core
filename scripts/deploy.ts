import { ethers } from "hardhat";

async function main() {
  const GBDC = await ethers.getContractFactory("GBDC");
  const gbdc = await GBDC.deploy(10000000000000000000000000000);

  await gbdc.deployed();

  console.log("GBDC deployed to:", gbdc.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
