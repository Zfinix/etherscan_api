import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanLogModel with EquatableMixin {
  final String status;
  final String message;
  final List<EtherScanLogResult>? result;
  EtherScanLogModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanLogModel copyWith({
    String? status,
    String? message,
    List<EtherScanLogResult>? result,
  }) {
    return EtherScanLogModel(
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

  factory EtherScanLogModel.empty() {
    return EtherScanLogModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory EtherScanLogModel.fromMap(Map<String, dynamic> map) {
    return EtherScanLogModel(
      status: map['status'],
      message: map['message'],
      result: List<EtherScanLogResult>.from(
        map['result']?.map(
          (x) => EtherScanLogResult.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanLogModel.fromJson(String source) =>
      EtherScanLogModel.fromMap(json.decode(source));

  @override
  int get hashCode => status.hashCode ^ message.hashCode ^ result.hashCode;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class EtherScanLogResult with EquatableMixin {
  final String address;
  final List<String>? topics;
  final String data;
  final String blockNumber;
  final String timeStamp;
  final String gasPrice;
  final String gasUsed;
  final String logIndex;
  final String transactionHash;
  final String transactionIndex;
  EtherScanLogResult({
    required this.address,
    required this.topics,
    required this.data,
    required this.blockNumber,
    required this.timeStamp,
    required this.gasPrice,
    required this.gasUsed,
    required this.logIndex,
    required this.transactionHash,
    required this.transactionIndex,
  });

  EtherScanLogResult copyWith({
    String? address,
    List<String>? topics,
    String? data,
    String? blockNumber,
    String? timeStamp,
    String? gasPrice,
    String? gasUsed,
    String? logIndex,
    String? transactionHash,
    String? transactionIndex,
  }) {
    return EtherScanLogResult(
      address: address ?? this.address,
      topics: topics ?? this.topics,
      data: data ?? this.data,
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      gasPrice: gasPrice ?? this.gasPrice,
      gasUsed: gasUsed ?? this.gasUsed,
      logIndex: logIndex ?? this.logIndex,
      transactionHash: transactionHash ?? this.transactionHash,
      transactionIndex: transactionIndex ?? this.transactionIndex,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'address': address,
      'topics': topics,
      'data': data,
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'gasPrice': gasPrice,
      'gasUsed': gasUsed,
      'logIndex': logIndex,
      'transactionHash': transactionHash,
      'transactionIndex': transactionIndex,
    };
  }

  factory EtherScanLogResult.fromMap(Map<String, dynamic> map) {
    return EtherScanLogResult(
      address: map['address'],
      topics: List<String>.from(map['topics']),
      data: map['data'],
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      gasPrice: map['gasPrice'],
      gasUsed: map['gasUsed'],
      logIndex: map['logIndex'],
      transactionHash: map['transactionHash'],
      transactionIndex: map['transactionIndex'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanLogResult.fromJson(String source) =>
      EtherScanLogResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      address,
      topics ?? [],
      data,
      blockNumber,
      timeStamp,
      gasPrice,
      gasUsed,
      logIndex,
      transactionHash,
      transactionIndex,
    ];
  }
}
