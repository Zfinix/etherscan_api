import 'package:etherscan_api/src/etherscan_api.dart';
import 'package:etherscan_api/src/models/contract/abi_model.dart';
import 'package:etherscan_api/src/core/helper/get_request.dart';
import 'package:etherscan_api/src/models/contract/source_code_model.dart';

extension EthContract on EtherscanAPI {
  /// Returns the ABI/Interface of a given contract
  ///
  /// `address` - Contract address
  ///
  /// Example
  ///
  /// ```
  /// api.contract
  ///  ..getAbi('0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359')
  ///  ..at('0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359')
  ///  ..memberId('0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359')
  /// ```
  ///
  Future<EtherScanAbiModel> getAbi({
    required String? address,
  }) async {
    const module = 'contract';
    const action = 'getabi';

    var query = {
      'module': module,
      'action': action,
      'address': address,
      'apiKey': apiKey
    };

    return (await get(query)).fold(
      (l) => EtherScanAbiModel.empty(),
      (r) => EtherScanAbiModel.fromJson(r),
    );
  }

  /// Get Contract Source Code for Verified Contract Source Codes
  ///
  /// `address` - Contract address
  ///
  /// Example
  ///
  /// ```
  /// api.contract.getSourceCode(
  ///     address: '0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359'
  /// )
  /// ```
  ///
  Future<EtherscanSourceCodeModel> getSourceCode({
    required String? address,
  }) async {
    const module = 'contract';
    const action = 'getsourcecode';

    var query = {
      'module': module,
      'action': action,
      'address': address,
      'apiKey': apiKey
    };

    return (await get(query)).fold(
      (l) => EtherscanSourceCodeModel.empty(),
      (r) => EtherscanSourceCodeModel.fromJson(r),
    );
  }
}
