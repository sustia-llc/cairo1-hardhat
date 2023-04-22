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
npx hardhat starknet-compile-cairo1 cairo1-contracts/cairo1.cairo
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

#### Run the Cairo1 contract on devnet

Update version of the docker image by looking at the https://github.com/0xSpaceShard/starknet-hardhat-plugin

```bash
sudo docker pull shardlabs/starknet-devnet:0.5.0a0
sudo docker run -p 5050:5050 shardlabs/starknet-devnet:0.5.0a0 --seed 42
```

Set default network in `hardhat.config.ts` to `devnet`. In another console, run a test that interacts with the compiled contract on the devnet:

```bash
npm test
```
