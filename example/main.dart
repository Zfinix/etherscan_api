import 'package:etherscan_api/etherscan_api.dart';

void main() async {
  final eth = EtherscanAPI(
      apiKey: 'YourApiKey', chain: EthChain.ropsten, enableLogs: false);

  final bal = await eth.txListInternal(
      txhash:
          '0x40eb908387324f2b575b4879cd9d7188f69c8fc9d87c901b9e2daaea4b442170');

  print(bal);

  /// EtherScanBalanceModel(1, OK, [EtherScanBalanceResult(0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae, 430141119464489895480972)])
}
