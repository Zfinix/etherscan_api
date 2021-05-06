import 'package:etherscan_api/etherscan_api.dart';
import 'package:etherscan_api/src/models/contract/abi_model.dart';
import 'package:etherscan_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('api', () {
    var api = EtherscanAPI(
      apiKey: 'YourApiKey',
    );

    group('account', () {
      test('.getMinedBlocks()', () async {
        var txlist = api.getMinedBlocks(
          address: '0x9dd134d14d1e65f84b706d6f205cd5b1cd03a46b',
        );

        await txlist.then((res) {
          expect(res, isNot(EtherScanMintedBlocksModel.empty()));
        });
      });

      test('.tokenBalance() by address', () async {
        var supply = api.tokenBalance(
            address: '0xe04f27eb70e025b78871a2ad7eabe85e61212761',
            contractAddress: '0x57d90b64a1a57749b0f932f1a3395792e12e7055');

        await supply.then((res) {
          expect(res, isNot(EtherScanTokenBalanceModel.empty()));
        });
      });

      test('.txList()', () async {
        var txlist =
            api.txList(address: '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae');

        await txlist.then((res) {
          expect(res, isNot(EtherScanTxListModel.empty()));
        });
      });

      test('.txListInternal() by hash', () async {
        var txlist = api.txListInternal(
            txhash:
                '0x8902e33b4da704b55d25e72af717b73a7f768b9b801422b6f0753429edaf2aae');

        await txlist.then((res) {
          expect(res, isNot(EtherScanTxInternalModel.empty()));
        });
      });

      test('.txListInternal() by address', () async {
        var txlist = api.txListInternal(
            address: '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae');
        await txlist.then((res) {
          expect(res, isNot(EtherScanTxInternalModel.empty()));
        });
      });

      test('.balance()', () async {
        var balance = api
            .balance(addresses: ['0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae']);
        await balance.then((res) {
          expect(res, isNot(EtherScanBalanceModel.empty()));
        });
      });

      test('.balance() multi', () async {
        var balance = api
            .balance(addresses: ['0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae']);
        await balance.then((res) {
          expect(res, isNot(EtherScanBalanceModel.empty()));
        });
      });

      test('.tokenTx()', () async {
        var txlist = api.tokenTx(
          address: '0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae',
          contractAddress: '0x6beb418fc6e1958204ac8baddcf109b8e9694966',
          startblock: 1,
          endblock: 'latest',
        );

        await txlist.then((res) {
          expect(res, isNot(EtherScanMintedTokenTxModel.empty()));
        });
      });
    });

    group('stats', () {
      test('.ethSupply()', () async {
        var supply = api.ethSupply();
        await supply.then((res) {
          expect(res, isNot(EtherScanSupplyModel.empty()));
        });
      });

      test('.tokenSupply() by tokenname', () async {
        var supply = api.tokenSupply(tokenName: 'MKR');
        await supply.then((res) {
          expect(res, isNot(EtherScanSupplyModel.empty()));
        });
      });
      test('.tokenSupply() by address', () async {
        var supply = api.tokenSupply(
          contractAddress: '0x57d90b64a1a57749b0f932f1a3395792e12e7055',
        );
        await supply.then((res) {
          expect(res, isNot(EtherScanSupplyModel.empty()));
        });
      });

      test('.ethPrice()', () async {
        var price = api.ethPrice();
        await price.then((res) {
          expect(res, isNot(EtherScanPriceModel.empty()));
        });
      });
    });

    group('block', () {
      test('.getblockReward()', () {
        var blockreward = api.getBlockReward();
        blockreward.then((res) {
          expect(res, isNot(EtherScanBlockRewardModel.empty()));
        });
      });
    });

    group('transaction', () {
      test('.getStatus()', () {
        var status = api.getStatus(
            txhash:
                '0x15f8e5ea1079d9a0bb04a4c58ae5fe7654b5b2b4463375ff7ffb490aa0032f3a');

        status.then((res) {
          expect(res, isNot(EtherScanTxStatusModel.empty()));
        });
      });
    });

    // test for bug #31
    // see https://github.com/sebs/etherscan-api/issues/31

    group('contract', () {
      test('getabi for a contract that is not verified by etherscan: error',
          () async {
        var api = EtherscanAPI(
          apiKey: 'YourApiKey',
          chain: EthChain.ropsten,
          timeout: Duration(milliseconds: 10000),
        );

        var abi =
            api.getAbi(address: '0xBB9bc244D798123fDe783fCc1C72d3Bb8C189413');

        await abi.then((v) {
          expect(v, EtherScanAbiModel.empty());
        });
      });
    });

    group('proxy', () {
      test('.blockNumber()', () async {
        var res = api.blockNumber();

        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.getBlockByNumber()', () async {
        var res = api.getBlockByNumber(tag: '0x10d4f');

        await res.then((res) {
          expect(res, isNot(EtherScanBlockByNumberModel.empty()));
        });
      });

      test('.getUncleByBlockNumberAndIndex()', () async {
        var res =
            api.getUncleByBlockNumberAndIndex(tag: '0x210A9B', index: '0x0');

        await res.then((res) {
          expect(res, isNot(EtherScanBlockByNumberModel.empty()));
        });
      });

      test('.getBlockTransactionCountByNumber()', () async {
        var res = api.getBlockTransactionCountByNumber(tag: '0x10FB78');

        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.getTransactionByHash()', () async {
        var res = api.getTransactionByHash(
            txhash:
                '0x1e2910a262b1008d0616a0beb24c1a491d78771baa54a33e66065e03b1f46bc1');

        await res.then((res) {
          expect(res, isNot(EtherScanTxByHashModel.empty()));
        });
      });

      test('.getTransactionByBlockNumberAndIndex()', () async {
        var res = api.getTransactionByBlockNumberAndIndex(
          tag: '0x10d4f',
          index: '0x0',
        );

        await res.then((res) {
          expect(res, isNot(EtherScanTxByHashModel.empty()));
        });
      });

      test('.getTransactionCount()', () async {
        var res = api.getTransactionCount(
            address: '0x2910543af39aba0cd09dbb2d50200b3e800a63d2');

        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.sendRawTransaction()', () async {
        var res = api.sendRawTransaction(hex: '0xf904808000831cfde080');

        await res.then((res) {
          expect(res, isNotNull);
        });
      });

      test('.getTransactionReceipt', () {
        var res = api.getTransactionReceipt(
            txhash:
                '0x1e2910a262b1008d0616a0beb24c1a491d78771baa54a33e66065e03b1f46bc1');
        res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.call()', () async {
        var res = api.call(
          to: '0xAEEF46DB4855E25702F8237E8f403FddcaF931C0',
          data:
              '0x70a08231000000000000000000000000e16359506c028e51f16be38986ec5746251e9724',
        );
        
        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.getCode()', () async {
        var res = api.getCode(
            address: '0xf75e354c5edc8efed9b59ee9f67a80845ade7d0c',
            tag: 'latest');

        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.getStorageAt()', () async {
        var res = api.getStorageAt(
            address: '0x6e03d9cce9d60f3e9f2597e13cd4c54c55330cfd',
            position: '0x0',
            tag: 'latest');

        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.gasPrice()', () async {
        var res = api.gasPrice();

        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });

      test('.estimateGas()', () async {
        var res = api.estimateGas(
          from: '0xdf4221b931b6ad4f4f221e2eb03913bd4368d0ba',
          to: '0x109aa384b8786e55abfa1f0ac6cb0561e0a06e94',
        );

        await res.then((res) {
          expect(res, isNot(EtherScanRpcResponseModel.empty()));
        });
      });
    });
  });
}
