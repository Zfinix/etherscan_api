import 'package:etherscan_api/src/etherscan_api.dart';
import 'package:etherscan_api/src/core/helper/get_request.dart';
import 'package:etherscan_api/src/models/models.dart';

extension EthTransaction on EtherscanAPI {
  /// Returns the status of a specific transaction hash
  ///
  /// `txhash` - Transaction hash
  ///

  Future<EtherScanTxStatusModel> getStatus({
    required String? txhash,
  }) async {
    const module = 'transaction';
    const action = 'getstatus';

    Map<String, dynamic>? query = {
      'txhash': txhash,
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    return (await get(query)).fold(
      (l) => EtherScanTxStatusModel.empty(),
      (r) => EtherScanTxStatusModel.fromJson(r),
    );
  }
}
