# Run private Ethereum network with React interface

In this guide, I will show the steps to run a Ethereum private network on your computer, install smart contract and interact with them via a React interface.

The document have 4 parts:

1. Installation of the tools
2. Genesis block definition and Ethereum node start up
3. Connect Remix and deploy smart contract
4. Use smart contract via React

## 1. Installation of the tools

The tools necessary are :

| Tool          | Description                                                  | Where                                          | Version at document creation                   |
| ------------- | ------------------------------------------------------------ | ---------------------------------------------- | ---------------------------------------------- |
| getch         | CLI for Ethereum network                                     | https://www.ethereum.org/cli                   | 1.8.13-stable                                  |
| remix         | Online IDE to develop solidity                               | http://remix.ethereum.org                      |                                                |
| metamask      | Browser extension for Ethereum dApps and wallets mangement tool | https://metamask.io/                           | 4.9.2                                          |
| Google Chrome | Internet browser (used for remix and metamask)               | https://www.google.com/chrome/                 | Version 67.0.3396.99 (Official Build) (64-bit) |
| MyEtherWallet | Online tool to generate Ethereum wallet amd downloadable UTC wallet | https://www.myetherwallet.com/#generate-wallet | 3.21.21                                        |

Remark : Be sure to connected on remix HTTP and not HTTPS, otherwise you will have error while trying to connect to your local network.

Please follow instruction to install the tools as given by official websites.

**Create 2 Ethereum wallets on MyEtherWallet and download the corresponding UTC files.**



## 2. Genesis block definition and Ethereum node start up



In this chapter I will provide the steps to create the Genesis block and start up your private Ethereum node on your computer.

1. Create a directory to hold your network files and go it

2. Create your genesis file, called myGenesis in this guide

3. Paste the following code

   And replace FIRST_WALLET_ADDRESS and SECOND_WALLET_ADDRESS by the public addresses of the wallets created in first section of this document.

   ```
   {
      "config": {
         "chainId": 1994,
         "homesteadBlock": 0,
         "eip155Block": 0,
         "eip158Block": 0,
         "byzantiumBlock": 0
      },
      "difficulty": "400",
      "gasLimit": "2000000",
      "alloc": {
         "FIRST_WALLET_ADDRESS": { 
             "balance": "100000000000000000000000" 
         },
         "SECOND_WALLET_ADDRESS": { 
             "balance": "120000000000000000000000" 
         }
      }
   }
   ```

