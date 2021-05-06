import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanMintedBlocksModel with EquatableMixin {
  final String status;
  final String message;
  final List<EtherScanMintedBlocksResult>? result;
  EtherScanMintedBlocksModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanMintedBlocksModel copyWith({
    String? status,
    String? message,
    List<EtherScanMintedBlocksResult>? result,
  }) {
    return EtherScanMintedBlocksModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result?.map((x) => x.toMap()).toList(),
    };
  }

  factory EtherScanMintedBlocksModel.empty() {
    return EtherScanMintedBlocksModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory EtherScanMintedBlocksModel.fromMap(Map<String, dynamic> map) {
    return EtherScanMintedBlocksModel(
      status: map['status'],
      message: map['message'],
      result: List<EtherScanMintedBlocksResult>.from(
          map['result']?.map((x) => EtherScanMintedBlocksResult.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanMintedBlocksModel.fromJson(String source) =>
      EtherScanMintedBlocksModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class EtherScanMintedBlocksResult with EquatableMixin {
  final String blockNumber;
  final String timeStamp;
  final String blockReward;
  EtherScanMintedBlocksResult({
    required this.blockNumber,
    required this.timeStamp,
    required this.blockReward,
  });

  EtherScanMintedBlocksResult copyWith({
    String? blockNumber,
    String? timeStamp,
    String? blockReward,
  }) {
    return EtherScanMintedBlocksResult(
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      blockReward: blockReward ?? this.blockReward,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'blockReward': blockReward,
    };
  }

  factory EtherScanMintedBlocksResult.fromMap(Map<String, dynamic> map) {
    return EtherScanMintedBlocksResult(
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      blockReward: map['blockReward'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanMintedBlocksResult.fromJson(String source) =>
      EtherScanMintedBlocksResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [blockNumber, timeStamp, blockReward];
}
