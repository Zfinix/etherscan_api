# Etherscan Dart API

[![license](https://img.shields.io/github/license/Zfinix/etherscan_api.svg)](https://github.com/Zfinix/etherscan_api/blob/main/LICENSE.md)
[![GitHub tag](https://img.shields.io/github/tag/Zfinix/etherscan_api.svg)](https://github.com/Zfinix/etherscan_api)

[![GitHub issues](https://img.shields.io/github/issues/Zfinix/etherscan_api.svg)](https://github.com/Zfinix/etherscan_api/issues)

A dart library to access the [etherscan.io](https://etherscan.io/apis) apis. 

```dart

import 'package:etherscan_api/etherscan_api.dart';

final eth = EtherscanAPI(apiKey: 'YourApiKey');

 final bal = await eth.balance(
    addresses: [
      '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae',
    ],
  );
 
 print(val);

```
## For testnet usage

Supported TestNets:

* morden
* ropsten
* rinkeby

Latest

```dart

final eth = EtherscanAPI(
    apiKey: 'YourApiKey', // Api key
    chain: EthChain.ropsten, // Network/chain
    enableLogs: true // Enable Logging
  );
```


