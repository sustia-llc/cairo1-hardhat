# Basic Sample Cairo1 Hardhat Project - with Starknet Plugin

This project demonstrates a basic Hardhat project, but with [Starknet plugin](https://github.com/0xSpaceShard/starknet-hardhat-plugin).

## Get started

#### Clone this repo

```bash
git clone https://github.com/sustia-llc/cairo1-hardhat.git
cairo1-hardhat
```

#### Install dependencies

```bash
npm ci
```

#### Compile a Cairo1 contract

```bash
npx hardhat run scripts/compile-contract.ts
```

### Set up environment variables

Some scripts require environment variables (search for usage of `ensureEnvVar` in the repo). You can define these variables in an `.env` file in the project root. If you want to use the OZ devnet accounts in env.example, uncomment "--seed", "42", in the `hardhat.config.ts` file.

```bash
cp .env.example .env
```

#### Run a test on integrated-devnet that interacts with the compiled Cairo1 contract

Set default network in `hardhat.config.ts` to `integrated-devnet`, then execute:

```bash
npm test
```

#### Deploy the Cairo1 contract to devnet

Update version of the docker image by looking at the https://github.com/0xSpaceShard/starknet-hardhat-plugin

updgraded to starknet-devnet:0.5.0a1 with fix: https://github.com/0xSpaceShard/starknet-devnet/pull/426

```bash
sudo docker pull shardlabs/starknet-devnet:0.5.0a1
sudo docker run -p 5050:5050 shardlabs/starknet-devnet:0.5.0a1 --seed 42
```

Declare and deploy the contract to devnet:

```bash
HARDHAT_NETWORK=devnet node --require hardhat/register scripts/deploy.ts
```

Copy the contract address to the dapp