import 'package:etherscan_api/src/etherscan_api.dart';
import 'package:etherscan_api/src/core/helper/get_request.dart';
import 'package:etherscan_api/src/models/models.dart';
import 'package:etherscan_api/src/models/stats/eth_price_model.dart';

extension EthStats on EtherscanAPI {
  /// Returns the supply of Tokens
  ///
  ///  `tokenname` - Name of the Token
  ///
  ///  `contractaddress` - Address from token contract
  ///
  /// Example
  ///
  /// ```dart
  /// var supply = eth.tokenSupply(
  ///     tokenname: null,
  ///     contractAddress: '0x57d90b64a1a57749b0f932f1a3395792e12e7055'
  /// );
  /// ```
  /// Result returned in Wei, to get value in Ether divide resultAbove/1000000000000000000)
  ///

  Future<EtherScanSupplyModel> tokenSupply({
    String? tokenName,
    String? contractAddress,
  }) async {
    const module = 'stats';
    const action = 'tokensupply';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    if (tokenName != null) {
      query.putIfAbsent('tokenname', () => tokenName);
    }

    if (contractAddress != null) {
      query.putIfAbsent('contractaddress', () => contractAddress);
    }

    return (await get(query)).fold(
      (l) => EtherScanSupplyModel.empty(),
      (r) => EtherScanSupplyModel.fromJson(r),
    );
  }

  /// Returns total supply of ether
  ///
  /// Example
  ///
  ///``` dart
  /// var supply = eth.ethSupply();
  ///```
  ///

  Future<EtherScanSupplyModel> ethSupply() async {
    const module = 'stats';
    const action = 'ethsupply';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanSupplyModel.empty(),
      (r) => EtherScanSupplyModel.fromJson(r),
    );
  }

  /// Returns the price of ether now
  ///
  /// Example
  ///
  /// ```dart
  /// var price = eth.ethprice();
  /// ```
  ///

  Future<EtherScanPriceModel> ethPrice() async {
    const module = 'stats';
    const action = 'ethprice';

    Map<String, dynamic>? query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanPriceModel.empty(),
      (r) => EtherScanPriceModel.fromJson(r),
    );
  }
}
