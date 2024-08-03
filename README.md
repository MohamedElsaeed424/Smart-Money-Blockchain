# SmartMoney Smart Contract

## Overview

The `SmartMoney` contract is a simple yet powerful Solidity contract that demonstrates basic financial transactions on the Ethereum blockchain. This contract allows users to deposit Ether into the contract, check the contract's balance, and withdraw funds either to the sender's address or to a specified address.

## Table of Contents

- [License](#license)
- [Contract Functions](#contract-functions)
- [How to Use](#how-to-use)
- [Important Notes](#important-notes)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contract Functions

### `getBalance`

```solidity
function getBalance() public view returns(uint)
```

Returns the current balance of the contract in wei. This function is `view`, meaning it does not modify the contract's state.

### `deposite`

```solidity
function deposite() public payable
```

Allows users to deposit Ether into the contract. The amount deposited is added to the contract's balance. This function is `payable`, meaning it can receive Ether.

### `withdrawToAll`

```solidity
function withdrawToAll() public
```

Withdraws the entire balance of the contract and transfers it to the address of the caller. The function makes use of the `msg.sender` to determine the recipient.

### `withdrawToAddress`

```solidity
function withdrawToAddress(address payable to) public
```

Withdraws the entire balance of the contract and transfers it to a specified address. The address to which the funds will be sent must be provided as a parameter.

## How to Use

1. **Deploy the Contract**: Deploy the `SmartMoney` contract to the Ethereum blockchain using a Solidity-compatible development environment like Remix or Truffle.

2. **Deposit Funds**: Call the `deposite` function with a value in Ether to add funds to the contract.

3. **Check Balance**: Use the `getBalance` function to view the current balance of the contract.

4. **Withdraw Funds**:
   - To withdraw funds to your address, call the `withdrawToAll` function.
   - To withdraw funds to a specific address, call the `withdrawToAddress` function with the target address as a parameter.

## Important Notes

- Ensure that you handle Ether with care. Once funds are sent to the contract, they cannot be retrieved except by withdrawing them through the provided functions.
- Be cautious when deploying contracts to the main Ethereum network due to gas costs and potential security considerations.
- The contract does not include any access control mechanisms. Any user can withdraw funds, so it is essential to ensure the contract is used in a controlled environment or incorporate security measures as needed.
