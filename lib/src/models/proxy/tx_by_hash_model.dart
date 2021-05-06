import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanTxByHashModel with EquatableMixin {
  final String jsonrpc;
  final int id;
  final EtherScanTxByHashModelResult result;
  EtherScanTxByHashModel({
    required this.jsonrpc,
    required this.id,
    required this.result,
  });

  EtherScanTxByHashModel copyWith({
    String? jsonrpc,
    int? id,
    EtherScanTxByHashModelResult? result,
  }) {
    return EtherScanTxByHashModel(
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

  factory EtherScanTxByHashModel.empty() {
    return EtherScanTxByHashModel(
      jsonrpc: '',
      id: 0,
      result: EtherScanTxByHashModelResult.empty(),
    );
  }

  factory EtherScanTxByHashModel.fromMap(Map<String, dynamic> map) {
    return EtherScanTxByHashModel(
      jsonrpc: map['jsonrpc'],
      id: map['id'],
      result: EtherScanTxByHashModelResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanTxByHashModel.fromJson(String source) =>
      EtherScanTxByHashModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jsonrpc, id, result];
}

class EtherScanTxByHashModelResult with EquatableMixin {
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

  EtherScanTxByHashModelResult({
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

  EtherScanTxByHashModelResult copyWith({
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
    return EtherScanTxByHashModelResult(
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

  factory EtherScanTxByHashModelResult.empty() {
    return EtherScanTxByHashModelResult(
      blockHash: '',
      blockNumber: '',
      from: '',
      gas: '',
      gasPrice: '',
      hash: '',
      input: '',
      nonce: '',
      to: '',
      transactionIndex: '',
      value: '',
      type: '',
      v: '',
      r: '',
      s: '',
    );
  }

  factory EtherScanTxByHashModelResult.fromMap(Map<String, dynamic> map) {
    return EtherScanTxByHashModelResult(
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

  factory EtherScanTxByHashModelResult.fromJson(String source) =>
      EtherScanTxByHashModelResult.fromMap(json.decode(source));

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
