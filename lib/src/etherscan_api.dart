import 'core/helper/get_request.dart';

class EtherscanAPI {
  final String apiKey;
  final EthChain chain;
  final bool enableLogs;
  final Duration? timeout;

  EtherscanAPI({
    required this.apiKey,
    this.chain = EthChain.mainnet,
    this.enableLogs = true,
    this.timeout,
  });
}

/// EtherScan sort order
enum EtherSort { asc, desc }

/// Describe num extension
extension DescribeEnum on Object {
  String get str => describeEnum(this);
}

/// Ethereum chain type
enum EthChain { mainnet, ropsten, kovan, rinkeby, homestead }

extension EthChainString on EthChain {
  String get chainName => str;
  String get chainApiUrl => ETH_API_URLS[chainName]!;
}

// This method exists as a workaround for https://github.com/dart-lang/sdk/issues/30021
/// Returns a short description of an enum value.
///
/// Strips off the enum class name from the `enumEntry.toString()`.
///
/// {@tool snippet}
///
/// ```dart
/// enum EthChain {
///   mainnet, ropsten, kovan, rinkeby, homestead
/// }
///
/// void validateDescribeEnum() {
///   assert(EthChain.ropsten.toString() == 'EthChain.ropsten');
///   assert(describeEnum(EthChain.ropsten) == 'ropsten');
/// }
/// ```
/// {@end-tool}
String describeEnum(Object enumEntry) {
  final description = enumEntry.toString();
  final indexOfDot = description.indexOf('.');

  assert(
    indexOfDot != -1 && indexOfDot < description.length - 1,
    'The provided object "$enumEntry" is not an enum.',
  );

  return description.substring(indexOfDot + 1);
}
