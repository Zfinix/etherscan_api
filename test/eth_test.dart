import 'package:etherscan_api/etherscan_api.dart';
import 'package:etherscan_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('proxy', () {
    final eth = EtherscanAPI(
      apiKey: 'YourApiKey',
    );
    test('.getMinedBlocks() returns data', () async {
      final bal = await eth.getMinedBlocks(
        address: '0x9dd134d14d1e65f84b706d6f205cd5b1cd03a46b',
      );
      expect(bal, isNot(EtherScanMintedBlocksModel.empty()));
    });
  });
}
