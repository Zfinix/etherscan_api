import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanBlockByNumberModel with EquatableMixin {
  final String jsonrpc;
  final int id;
  final EtherScanBlockNumberResult result;
  EtherScanBlockByNumberModel({
    required this.jsonrpc,
    required this.id,
    required this.result,
  });

  EtherScanBlockByNumberModel copyWith({
    String? jsonrpc,
    int? id,
    EtherScanBlockNumberResult? result,
  }) {
    return EtherScanBlockByNumberModel(
      jsonrpc: jsonrpc ?? this.jsonrpc,
      id: id ?? this.id,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'jsonrpc': jsonrpc,
      'id': id,
      'result': result.toMap(),
    };
  }

  factory EtherScanBlockByNumberModel.empty() {
    return EtherScanBlockByNumberModel(
      jsonrpc: '',
      id: 0,
      result: EtherScanBlockNumberResult.empty(),
    );
  }

  factory EtherScanBlockByNumberModel.fromMap(Map<String, dynamic> map) {
    return EtherScanBlockByNumberModel(
      jsonrpc: map['jsonrpc'],
      id: map['id'],
      result: EtherScanBlockNumberResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanBlockByNumberModel.fromJson(String source) =>
      EtherScanBlockByNumberModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jsonrpc, id, result];
}

class EtherScanBlockNumberResult with EquatableMixin {
  final String difficulty;
  final String extraData;
  final String gasLimit;
  final String gasUsed;
  final String hash;
  final String logsBloom;
  final String miner;
  final String mixHash;
  final String nonce;
  final String number;
  final String parentHash;
  final String receiptsRoot;
  final String sha3Uncles;
  final String size;
  final String stateRoot;
  final String timestamp;
  final String? totalDifficulty;
  final List<EtherScanBlockNumberResultTransaction>? transactions;
  final String transactionsRoot;
  final List<dynamic> uncles;

  EtherScanBlockNumberResult({
    required this.difficulty,
    required this.extraData,
    required this.gasLimit,
    required this.gasUsed,
    required this.hash,
    required this.logsBloom,
    required this.miner,
    required this.mixHash,
    required this.nonce,
    required this.number,
    required this.parentHash,
    required this.receiptsRoot,
    required this.sha3Uncles,
    required this.size,
    required this.stateRoot,
    required this.timestamp,
    required this.totalDifficulty,
    required this.transactions,
    required this.transactionsRoot,
    required this.uncles,
  });

  EtherScanBlockNumberResult copyWith({
    String? difficulty,
    String? extraData,
    String? gasLimit,
    String? gasUsed,
    String? hash,
    String? logsBloom,
    String? miner,
    String? mixHash,
    String? nonce,
    String? number,
    String? parentHash,
    String? receiptsRoot,
    String? sha3Uncles,
    String? size,
    String? stateRoot,
    String? timestamp,
    String? totalDifficulty,
    List<EtherScanBlockNumberResultTransaction>? transactions,
    String? transactionsRoot,
    List<dynamic>? uncles,
  }) {
    return EtherScanBlockNumberResult(
      difficulty: difficulty ?? this.difficulty,
      extraData: extraData ?? this.extraData,
      gasLimit: gasLimit ?? this.gasLimit,
      gasUsed: gasUsed ?? this.gasUsed,
      hash: hash ?? this.hash,
      logsBloom: logsBloom ?? this.logsBloom,
      miner: miner ?? this.miner,
      mixHash: mixHash ?? this.mixHash,
      nonce: nonce ?? this.nonce,
      number: number ?? this.number,
      parentHash: parentHash ?? this.parentHash,
      receiptsRoot: receiptsRoot ?? this.receiptsRoot,
      sha3Uncles: sha3Uncles ?? this.sha3Uncles,
      size: size ?? this.size,
      stateRoot: stateRoot ?? this.stateRoot,
      timestamp: timestamp ?? this.timestamp,
      totalDifficulty: totalDifficulty ?? this.totalDifficulty,
      transactions: transactions ?? this.transactions,
      transactionsRoot: transactionsRoot ?? this.transactionsRoot,
      uncles: uncles ?? this.uncles,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'difficulty': difficulty,
      'extraData': extraData,
      'gasLimit': gasLimit,
      'gasUsed': gasUsed,
      'hash': hash,
      'logsBloom': logsBloom,
      'miner': miner,
      'mixHash': mixHash,
      'nonce': nonce,
      'number': number,
      'parentHash': parentHash,
      'receiptsRoot': receiptsRoot,
      'sha3Uncles': sha3Uncles,
      'size': size,
      'stateRoot': stateRoot,
      'timestamp': timestamp,
      'totalDifficulty': totalDifficulty,
      'transactions': transactions?.map((x) => x.toMap()).toList(),
      'transactionsRoot': transactionsRoot,
      'uncles': uncles,
    };
  }

  factory EtherScanBlockNumberResult.empty() {
    return EtherScanBlockNumberResult(
      difficulty: '',
      extraData: '',
      gasLimit: '',
      gasUsed: '',
      hash: '',
      logsBloom: '',
      miner: '',
      mixHash: '',
      nonce: '',
      number: '',
      parentHash: '',
      receiptsRoot: '',
      sha3Uncles: '',
      size: '',
      stateRoot: '',
      timestamp: '',
      totalDifficulty: '',
      transactions: [],
      transactionsRoot: '',
      uncles: [],
    );
  }

  factory EtherScanBlockNumberResult.fromMap(Map<String, dynamic> map) {
    return EtherScanBlockNumberResult(
      difficulty: map['difficulty'],
      extraData: map['extraData'],
      gasLimit: map['gasLimit'],
      gasUsed: map['gasUsed'],
      hash: map['hash'],
      logsBloom: map['logsBloom'],
      miner: map['miner'],
      mixHash: map['mixHash'],
      nonce: map['nonce'],
      number: map['number'],
      parentHash: map['parentHash'],
      receiptsRoot: map['receiptsRoot'],
      sha3Uncles: map['sha3Uncles'],
      size: map['size'],
      stateRoot: map['stateRoot'],
      timestamp: map['timestamp'],
      totalDifficulty: map['totalDifficulty'],
      transactions: List<EtherScanBlockNumberResultTransaction>.from(
          (map['transactions'] ?? [])
              ?.map((x) => EtherScanBlockNumberResultTransaction.fromMap(x))),
      transactionsRoot: map['transactionsRoot'],
      uncles: List<dynamic>.from(map['uncles']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanBlockNumberResult.fromJson(String source) =>
      EtherScanBlockNumberResult.fromMap(json.decode(source));
  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      difficulty,
      extraData,
      gasLimit,
      gasUsed,
      hash,
      logsBloom,
      miner,
      mixHash,
      nonce,
      number,
      parentHash,
      receiptsRoot,
      sha3Uncles,
      size,
      stateRoot,
      timestamp,
      totalDifficulty ?? '',
      transactions ?? [],
      transactionsRoot,
      uncles,
    ];
  }
}

class EtherScanBlockNumberResultTransaction with EquatableMixin {
  final String blockHash;
  final String blockNumber;
  final String from;
  final String gas;
  final String gasPrice;
  final String hash;
  final String input;
  final String nonce;
  final String to;
  final String transactionIndex;
  final String value;
  final String type;
  final String v;
  final String r;
  final String s;

  EtherScanBlockNumberResultTransaction({
    required this.blockHash,
    required this.blockNumber,
    required this.from,
    required this.gas,
    required this.gasPrice,
    required this.hash,
    required this.input,
    required this.nonce,
    required this.to,
    required this.transactionIndex,
    required this.value,
    required this.type,
    required this.v,
    required this.r,
    required this.s,
  });

  EtherScanBlockNumberResultTransaction copyWith({
    String? blockHash,
    String? blockNumber,
    String? from,
    String? gas,
    String? gasPrice,
    String? hash,
    String? input,
    String? nonce,
    String? to,
    String? transactionIndex,
    String? value,
    String? type,
    String? v,
    String? r,
    String? s,
  }) {
    return EtherScanBlockNumberResultTransaction(
      blockHash: blockHash ?? this.blockHash,
      blockNumber: blockNumber ?? this.blockNumber,
      from: from ?? this.from,
      gas: gas ?? this.gas,
      gasPrice: gasPrice ?? this.gasPrice,
      hash: hash ?? this.hash,
      input: input ?? this.input,
      nonce: nonce ?? this.nonce,
      to: to ?? this.to,
      transactionIndex: transactionIndex ?? this.transactionIndex,
      value: value ?? this.value,
      type: type ?? this.type,
      v: v ?? this.v,
      r: r ?? this.r,
      s: s ?? this.s,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockHash': blockHash,
      'blockNumber': blockNumber,
      'from': from,
      'gas': gas,
      'gasPrice': gasPrice,
      'hash': hash,
      'input': input,
      'nonce': nonce,
      'to': to,
      'transactionIndex': transactionIndex,
      'value': value,
      'type': type,
      'v': v,
      'r': r,
      's': s,
    };
  }

  factory EtherScanBlockNumberResultTransaction.fromMap(
      Map<String, dynamic> map) {
    return EtherScanBlockNumberResultTransaction(
      blockHash: map['blockHash'],
      blockNumber: map['blockNumber'],
      from: map['from'],
      gas: map['gas'],
      gasPrice: map['gasPrice'],
      hash: map['hash'],
      input: map['input'],
      nonce: map['nonce'],
      to: map['to'],
      transactionIndex: map['transactionIndex'],
      value: map['value'],
      type: map['type'],
      v: map['v'],
      r: map['r'],
      s: map['s'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanBlockNumberResultTransaction.fromJson(String source) =>
      EtherScanBlockNumberResultTransaction.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      blockHash,
      blockNumber,
      from,
      gas,
      gasPrice,
      hash,
      input,
      nonce,
      to,
      transactionIndex,
      value,
      type,
      v,
      r,
      s,
    ];
  }
}
