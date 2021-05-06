import 'package:etherscan_api/src/etherscan_api.dart';
import 'package:etherscan_api/src/core/helper/get_request.dart';
import 'package:etherscan_api/src/models/models.dart';

extension EthLog on EtherscanAPI {
  /// The Event Log API was designed to provide an alternative to the native eth_getLogs.
  /// returns the status of a specific transaction hash
  ///
  /// `fromBlock` - fromBlock
  ///
  /// `toBlock` - toBlock
  ///
  /// `topic0` - topic (32 Bytes per topic)
  ///
  /// `topic0_1_opr` - and | or between topic0 & topic1
  ///
  /// `topic1` - topic (32 Bytes per topic)
  ///
  /// `topic1_2_opr` - and | or between topic1 & topic2
  ///
  /// `topic2` - topic (32 Bytes per topic)
  ///
  /// `topic2_3_opr` - and | or between topic2 & topic3
  ///
  /// `topic3` - topic (32 Bytes per topic)
  ///
  /// `topic0_2_opr` - and | or between topic0 & topic2
  ///

  Future<EtherScanLogModel> getLogs({
    required String? address,
    String? fromBlock,
    String? toBlock,
    String? topic0,
    String? topic0_1_opr,
    String? topic1,
    String? topic1_2_opr,
    String? topic2,
    String? topic2_3_opr,
    String? topic3,
    String? topic0_2_opr,
  }) async {
    const module = 'logs';
    const action = 'getLogs';

    Map<String, dynamic>? query = {
      'apiKey': apiKey,
      'module': module,
      'action': action,
    };

    if (address != null) {
      query.putIfAbsent('address', () => address);
    }

    if (fromBlock != null) {
      query.putIfAbsent('fromBlock', () => fromBlock);
    }

    if (toBlock != null) {
      query.putIfAbsent('toBlock', () => toBlock);
    }

    if (topic0 != null) {
      query.putIfAbsent('topic0', () => topic0);
    }
    if (topic0_1_opr != null) {
      query.putIfAbsent('topic0_1_opr', () => topic0_1_opr);
    }

    if (topic1 != null) {
      query.putIfAbsent('topic1', () => topic1);
    }

    if (topic1_2_opr != null) {
      query.putIfAbsent('topic1_2_opr', () => topic1_2_opr);
    }
    if (topic2 != null) {
      query.putIfAbsent('topic2', () => topic2);
    }

    if (topic2_3_opr != null) {
      query.putIfAbsent('topic2_3_opr', () => topic2_3_opr);
    }

    if (topic0_2_opr != null) {
      query.putIfAbsent('topic0_2_opr', () => topic0_2_opr);
    }

    if (topic3 != null) {
      query.putIfAbsent('topic3', () => topic3);
    }
    return (await get(query)).fold(
      (l) => EtherScanLogModel.empty(),
      (r) => EtherScanLogModel.fromJson(r),
    );
  }
}
