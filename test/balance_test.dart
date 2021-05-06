import 'package:etherscan_api/etherscan_api.dart';
import 'package:etherscan_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('balance', () {
    final eth = EtherscanAPI(
      apiKey: 'YourApiKey',
    );
    test('.balance() returns data', () async {
      final bal = await eth.balance(
        addresses: [
          '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae',
        ],
      );
      expect(bal, isNot(EtherScanBalanceModel.empty()));
    });
  });

  test('.balance() throws Error', () async {
    final eth = EtherscanAPI(
      apiKey: '',
      enableLogs: true,
    );

    final bal = await eth.balance(
      addresses: [
        '',
      ],
    );
    expect(bal, equals(EtherScanBalanceModel.empty()));
  });
}
