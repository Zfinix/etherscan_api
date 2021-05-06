import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanBlockRewardModel with EquatableMixin {
  final String status;
  final String message;
  final EtherScanBlockRewardResult result;
  EtherScanBlockRewardModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanBlockRewardModel copyWith({
    String? status,
    String? message,
    EtherScanBlockRewardResult? result,
  }) {
    return EtherScanBlockRewardModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result.toMap(),
    };
  }

  factory EtherScanBlockRewardModel.empty() {
    return EtherScanBlockRewardModel(
      status: 'empty',
      message: '',
      result: EtherScanBlockRewardResult.empty(),
    );
  }

  factory EtherScanBlockRewardModel.fromMap(Map<String, dynamic> map) {
    return EtherScanBlockRewardModel(
      status: map['status'],
      message: map['message'],
      result: EtherScanBlockRewardResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanBlockRewardModel.fromJson(String source) =>
      EtherScanBlockRewardModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}

class EtherScanBlockRewardResult with EquatableMixin {
  final String blockNumber;
  final String timeStamp;
  final String blockMiner;
  final String blockReward;
  final List<dynamic> uncles;
  final String uncleInclusionReward;
  EtherScanBlockRewardResult({
    required this.blockNumber,
    required this.timeStamp,
    required this.blockMiner,
    required this.blockReward,
    required this.uncles,
    required this.uncleInclusionReward,
  });

  EtherScanBlockRewardResult copyWith({
    String? blockNumber,
    String? timeStamp,
    String? blockMiner,
    String? blockReward,
    List<dynamic>? uncles,
    String? uncleInclusionReward,
  }) {
    return EtherScanBlockRewardResult(
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      blockMiner: blockMiner ?? this.blockMiner,
      blockReward: blockReward ?? this.blockReward,
      uncles: uncles ?? this.uncles,
      uncleInclusionReward: uncleInclusionReward ?? this.uncleInclusionReward,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'blockMiner': blockMiner,
      'blockReward': blockReward,
      'uncles': uncles,
      'uncleInclusionReward': uncleInclusionReward,
    };
  }

  factory EtherScanBlockRewardResult.empty() {
    return EtherScanBlockRewardResult(
      blockNumber: '',
      timeStamp: '',
      blockMiner: '',
      blockReward: '',
      uncles: [],
      uncleInclusionReward: '',
    );
  }

  factory EtherScanBlockRewardResult.fromMap(Map<String, dynamic> map) {
    return EtherScanBlockRewardResult(
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      blockMiner: map['blockMiner'],
      blockReward: map['blockReward'],
      uncles: List<dynamic>.from(map['uncles']),
      uncleInclusionReward: map['uncleInclusionReward'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanBlockRewardResult.fromJson(String source) =>
      EtherScanBlockRewardResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props {
    return [
      blockNumber,
      timeStamp,
      blockMiner,
      blockReward,
      uncles,
      uncleInclusionReward,
    ];
  }
}
