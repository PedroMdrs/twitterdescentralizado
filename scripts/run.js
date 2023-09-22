const main = async () => {
  const xPost = await hre.ethers.deployContract("XPost");
  await xPost.waitForDeployment();
  console.log("deploy do contrato no endereco: ", xPost.target);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

runMain();
