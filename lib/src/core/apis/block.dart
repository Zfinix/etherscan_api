import 'package:etherscan_api/src/models/models.dart';

import 'package:etherscan_api/src/core/helper/get_request.dart';
import 'package:etherscan_api/src/etherscan_api.dart';

extension EthBlock on EtherscanAPI {
  ///
  /// Find the block reward for a given address and block
  ///
  /// `address` - Address of the block
  ///
  /// `blockno` - Block number
  ///

  Future<EtherScanBlockRewardModel> getBlockReward({
    String? address,
    Object? blockno = 0,
  }) async {
    const module = 'block';
    const action = 'getblockreward';

    final query = {
      'module': module,
      'action': action,
      'apiKey': apiKey,
    };

    if (address != null) {
      query.putIfAbsent('address', () => address);
    }

    if (blockno != null) {
      query.putIfAbsent('blockno', () => '$blockno');
    }

    return (await get(query)).fold(
      (l) => EtherScanBlockRewardModel.empty(),
      (r) => EtherScanBlockRewardModel.fromJson(r),
    );
  }
}
