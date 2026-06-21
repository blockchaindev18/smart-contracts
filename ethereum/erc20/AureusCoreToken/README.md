# 🪙 AureusCoreToken (ARC)

## 📌 Overview
Aureus Core (ARC) is an ERC-20 token built on the Ethereum blockchain using OpenZeppelin secure smart contract standards. The project is designed with a fixed supply model and transparent token allocation structure to ensure trust and verifiability.

The token is deployed on both testnet and mainnet environments for full lifecycle testing, including functionality validation, security verification, and real-world deployment readiness.
---

## 🌐 Network Deployments

### 🧪 Testnet Deployment
- Network: Sepolia
- Contract Address: 0xab141C39b2Dba4C89394eF6fF89C698a1B9Ad3D9
- Explorer: https://sepolia.etherscan.io/address/0xab141C39b2Dba4C89394eF6fF89C698a1B9Ad3D9
- Purpose: Testing

---

### 🚀 Mainnet Deployment
- Network: Ethereum Mainnet
- Contract Address: -
- Explorer: https://etherscan.io/address/-
- Purpose: Production

---

## ⚙️ Token Details
- Token Name: Aureus Core
- Symbol: ARC
- Decimals: 18
- Total Supply: 10,000,000,000
- Standard: ERC-20
- Blockcahin: Ethereum

---

## 🔐 Smart Contract Features

- ERC-20 Standard Implementation (OpenZeppelin)
- Secure and audited OpenZeppelin contracts
- Fixed total supply model (no inflation)
- Ownership control using Ownable
- No backdoors or hidden mint functions
- Fully tested on testnet before mainnet deployment

---

## 🪙 Token Requirements

### Token Standard
ERC-20 (Ethereum)

### Token Name
Aureus Core

### Token Symbol
ARC

### Total Supply
10,000,000,000 MMC

---

## 📊 Token Allocation & Lock Structure

- 5,000,000,000 MMC will be unlocked and available at launch
- 1,000,000,000 MMC will remain locked until **October 28, 2028**
- Lock mechanism will be enforced at smart contract level (time-based)

---

## 🔐 Ownership & Control

- Contract ownership will be transferred to the client wallet after deployment
- No centralized control after ownership transfer (if renounced option is used)
- Fully transparent and verifiable on-chain logic

---

🔍 Verification

Contract is verified on Etherscan:

Testnet: Verified
Mainnet: Verified

---

🔐 Security Statement

Built using audited OpenZeppelin libraries
No malicious functions or hidden mint logic
Fully transparent and verifiable source code
Tested extensively on testnet before mainnet deployment

---

## 📸 Testnet Screenshots

<p align="center">
  <img src="./assets/ss1.png" width="100%"><br><br>

  <img src="./assets/ss2.png" width="100%"><br><br>

  <img src="./assets/ss3.png" width="100%"><br><br>

  <img src="./assets/ss4.png" width="100%"><br><br>

  <img src="./assets/ss5.png" width="100%"><br><br>

  <img src="./assets/ss6.png" width="100%"><br><br>

  <img src="./assets/ss7.png" width="100%"><br><br>

  <img src="./assets/ss8.png" width="100%"><br><br>
<p

---

## ⚠️ Audit Summary

- **1 Risk detected** (vesting-related)
- **1 Caution detected** (newly deployed token)

The risk is associated with the vesting mechanism; after vesting completion, ownership renouncement may resolve this flag. The caution is due to the token being newly deployed, which is a standard initial warning.

**No additional critical issues were detected.**