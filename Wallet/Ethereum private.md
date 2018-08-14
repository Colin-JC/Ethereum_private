Ethereum private

Installer geth

Creer les wallet et demarrer le network, peut demarrer une seconde node si besoin

definir le wallet sur lequel on mine : miner.setEtherbase("WALLET_ADDRESS")

Clef my ether pour le comte :



| Mot de pass my ether wallet | Addresse                                                     | Clef privee                                                  |
| --------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| jetestethereumprivate       | e2148925f4a356bfb52d2047698f329c48ae5846 0xe2148925f4A356BFb52D2047698f329C48Ae5846 | c66132fbeded4f662e2a930da759236905b0b1b00a9689ee2a7a1429483a01ad |
| jetestethereumprivate2      | 4940615333cfbe175a46fdee87c566d92851a3e0 0x4940615333cfbE175a46FDeE87c566d92851A3e0 | b4185cddc846cc0e1dedf57c0f47adf87d5ffa26c4897931de2eebc68aefa5fc |
|                             |                                                              |                                                              |

```
Lancer mist avec acces au noeud local :
mist --rpc myDataDir/geth.ipc
```

**Demarrer le node avec acces en local** http://127.0.0.1:8545

> geth --rpc --rpcport "8545" --rpcapi "db,eth,net,web3,personal,web3,debug" --rpccorsdomain="nkbihfbeogaeaoehlefnkodbefgpgknn" --datadir ./myDataDir --networkid 1994 console 2>> myEth.log

Sconde node :

`geth --datadir ./peer2DataDir --networkid 1114 --port 30304 console 2>> myEth2.log`



> --rpccorsdomain="*"
>
> --rpcapi="db,eth,net,web3,personal,web3"

Pour le connecter a remix, verifier d'etre sans HTTPS --> http://remix.ethereum.org

Le choix de la version d'ETH doit etre un choix d'architecture

If sender incorrect error : check genesis chainId is same than geth option netowkt Id and if change reboot metamask





Set up a private Ethereum network and add peers, wallets and make them work is not difficult

Using meta mask and private key of the wallet to see the amount



Now how to plug the network with smart contract ?

Plug remix with local node ? Ganache ?

