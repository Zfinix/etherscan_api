import 'package:etherscan_api/src/etherscan_api.dart';
import 'package:etherscan_api/src/core/helper/get_request.dart';
import 'package:etherscan_api/src/models/models.dart';

extension EthProxy on EtherscanAPI {
  /// Returns the number of most recent block
  ///
  /// Example
  ///
  ///```
  /// var block = eth.blockNumber();
  /// ```
  ///

  Future<EtherScanRpcResponseModel> blockNumber() async {
    const module = 'proxy';
    const action = 'eth_blockNumber';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns information about a block by block number.
  ///
  /// `tag` - Tag to look up
  ///
  /// Example
  ///
  /// ```dart
  /// var blockNumber = eth.getBlockByNumber(tag: '0x10d4f');
  /// ```

  Future<EtherScanBlockByNumberModel> getBlockByNumber({
    required String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getBlockByNumber';
    const boolean = true;

    Map<String, dynamic>? query = {
      'tag': tag,
      'module': module,
      'action': action,
      'boolean': boolean,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanBlockByNumberModel.empty(),
      (r) => EtherScanBlockByNumberModel.fromJson(r),
    );
  }

  /// Returns information about a uncle by block number.
  ///
  /// `tag` - Tag to look up
  ///
  /// `index` - Index
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getUncleByBlockNumberAndIndex(
  ///    tag: '0x210A9B',
  ///    index: '0x0'
  /// );
  /// ```
  ///

  Future<EtherScanBlockByNumberModel> getUncleByBlockNumberAndIndex({
    required String? tag,
    required String? index,
  }) async {
    const module = 'proxy';
    const action = 'eth_getUncleByBlockNumberAndIndex';

    Map<String, dynamic>? query = {
      'tag': tag,
      'module': module,
      'action': action,
      'index': index,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanBlockByNumberModel.empty(),
      (r) => EtherScanBlockByNumberModel.fromJson(r),
    );
  }

  /// Returns the number of transactions in a block from a block matching the given block number
  ///
  /// `tag` - Tag to look up
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getBlockTransactionCountByNumber(
  ///     tag:'0x10FB78'
  /// );
  /// ```
  ///

  Future<EtherScanRpcResponseModel> getBlockTransactionCountByNumber({
    required String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getBlockTransactionCountByNumber';

    Map<String, dynamic>? query = {
      'tag': tag,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };
    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns the information about a transaction requested by transaction hash
  ///
  /// `hash` - Transaction hash
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getTransactionByHash(
  ///     txhash: '0x1e2910a262b1008d0616a0beb24c1a491d78771baa54a33e66065e03b1f46bc1'
  /// );
  /// ```
  ///

  Future<EtherScanTxByHashModel> getTransactionByHash({
    required String? txhash,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionByHash';

    Map<String, dynamic>? query = {
      'txhash': txhash,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanTxByHashModel.empty(),
      (r) => EtherScanTxByHashModel.fromJson(r),
    );
  }

  /// Returns information about a transaction by block number and transaction index position
  ///
  /// `tag` - Tag to look up
  ///
  /// `index` - Index
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getTransactionByBlockNumberAndIndex(
  ///    tag: '0x10d4f',
  ///    index: '0x0'
  /// );
  /// ```
  ///

  Future<EtherScanTxByHashModel> getTransactionByBlockNumberAndIndex({
    required String? tag,
    required String? index,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionByBlockNumberAndIndex';

    Map<String, dynamic>? query = {
      'index': index,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanTxByHashModel.empty(),
      (r) => EtherScanTxByHashModel.fromJson(r),
    );
  }

  /// Returns the number of transactions sent from an address
  ///
  /// `address` - Address of the transaction
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getTransactionCount(
  ///     address: '0x2910543af39aba0cd09dbb2d50200b3e800a63d2',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<EtherScanRpcResponseModel> getTransactionCount({
    required String? address,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionCount';

    Map<String, dynamic>? query = {
      'address': address,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }

  /// Creates new message call transaction or a contract creation for signed transactions
  ///
  /// `hex` - Serialized Message
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.sendRawTransaction(
  ///   hex: '0xf904808000831cfde080'
  /// );
  /// ```
  ///

  Future<String?> sendRawTransaction({
    required String? hex,
  }) async {
    const module = 'proxy';
    const action = 'eth_sendRawTransaction';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'hex': hex,
    };

    return (await get(query)).fold(
      (l) => null,
      (r) => r,
    );
  }

  /// Returns the receipt of a transaction by transaction hash
  ///
  /// `txhash` - Transaction hash
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getTransactionReceipt(
  ///     txhash: '0x1e2910a262b1008d0616a0beb24c1a491d78771baa54a33e66065e03b1f46bc1'
  /// );
  /// ```
  ///

  Future<EtherScanTxReceiptModel> getTransactionReceipt({
    required String? txhash,
  }) async {
    const module = 'proxy';
    const action = 'eth_getTransactionReceipt';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'txhash': txhash,
    };

    return (await get(query)).fold(
      (l) => EtherScanTxReceiptModel.empty(),
      (r) => EtherScanTxReceiptModel.fromJson(r),
    );
  }

  /// Executes a new message call immediately without creating a transaction on the block chain
  ///
  /// `to` - Address to execute from
  ///
  /// `data` - Data to transfer
  ///
  /// `tag` - A tag
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.call(
  ///     to: '0xAEEF46DB4855E25702F8237E8f403FddcaF931C0',
  ///     data: '0x70a08231000000000000000000000000e16359506c028e51f16be38986ec5746251e9724',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<EtherScanRpcResponseModel> call({
    required String? to,
    required String? data,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_call';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'to': to,
      'data': data,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns code at a given address
  ///
  /// `address` - Address to get code from
  ///
  /// `tag` - ??
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getCode(
  ///     address: '0xf75e354c5edc8efed9b59ee9f67a80845ade7d0c',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<EtherScanRpcResponseModel> getCode({
    required String address,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getCode';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'address': address,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns the value from a storage position at a given address.
  ///
  /// `address` - Address to get code from
  ///
  /// `position` - Storage position
  ///
  /// `tag` - ??
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.getStorageAt(
  ///     address: '0x6e03d9cce9d60f3e9f2597e13cd4c54c55330cfd',
  ///     position:'0x0',
  ///     tag: 'latest'
  /// );
  /// ```
  ///

  Future<EtherScanRpcResponseModel> getStorageAt({
    required String address,
    required String position,
    String? tag,
  }) async {
    const module = 'proxy';
    const action = 'eth_getStorageAt';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'address': address,
      'position': position,
    };

    if (tag != null) {
      query.putIfAbsent('tag', () => tag);
    }

    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }

  /// Returns the current price per gas in wei.
  ///
  /// ```dart
  /// var gasprice = eth.gasPrice();
  /// ```
  ///

  Future<EtherScanRpcResponseModel> gasPrice() async {
    const module = 'proxy';
    const action = 'eth_gasPrice';
    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
    };

    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }

  /// Makes a call or transaction, which won't be added to the blockchain and returns the used gas, which can be used for estimating the used gas
  ///
  /// `from` - Receiving Address
  ///
  /// `to` - Sending Address
  ///
  /// Example
  ///
  /// ```dart
  /// var res = eth.estimateGas(
  ///     from: '0xdf4221b931b6ad4f4f221e2eb03913bd4368d0ba',
  ///     to: '0x109aa384b8786e55abfa1f0ac6cb0561e0a06e94',
  ///);
  ///
  ///```
  ///

  Future<EtherScanRpcResponseModel> estimateGas({
    required String? to,
    required String? from,
  }) async {
    const module = 'proxy';
    const action = 'eth_estimateGas';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
      'to': to,
      'from': from,
    };
    return (await get(query)).fold(
      (l) => EtherScanRpcResponseModel.empty(),
      (r) => EtherScanRpcResponseModel.fromJson(r),
    );
  }
}
