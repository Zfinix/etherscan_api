import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanTxInternalModel with EquatableMixin {
  final String status;
  final String message;
  final List<EtherScanTxInternalResult>? result;
  EtherScanTxInternalModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanTxInternalModel copyWith({
    String? status,
    String? message,
    List<EtherScanTxInternalResult>? result,
  }) {
    return EtherScanTxInternalModel(
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

  factory EtherScanTxInternalModel.empty() {
    return EtherScanTxInternalModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory EtherScanTxInternalModel.fromMap(Map<String, dynamic> map) {
    return EtherScanTxInternalModel(
      status: map['status'],
      message: map['message'],
      result: List<EtherScanTxInternalResult>.from(
        map['result']?.map(
          (x) => EtherScanTxInternalResult.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanTxInternalModel.fromJson(String source) =>
      EtherScanTxInternalModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class EtherScanTxInternalResult with EquatableMixin {
  final String blockNumber;
  final String timeStamp;
  final String hash;
  final String from;
  final String to;
  final String value;
  final String contractAddress;
  final String input;
  final String type;
  final String gas;
  final String gasUsed;
  final String traceId;
  final String isError;
  final String errCode;
  EtherScanTxInternalResult({
    required this.blockNumber,
    required this.timeStamp,
    required this.hash,
    required this.from,
    required this.to,
    required this.value,
    required this.contractAddress,
    required this.input,
    required this.type,
    required this.gas,
    required this.gasUsed,
    required this.traceId,
    required this.isError,
    required this.errCode,
  });

  EtherScanTxInternalResult copyWith({
    String? blockNumber,
    String? timeStamp,
    String? hash,
    String? from,
    String? to,
    String? value,
    String? contractAddress,
    String? input,
    String? type,
    String? gas,
    String? gasUsed,
    String? traceId,
    String? isError,
    String? errCode,
  }) {
    return EtherScanTxInternalResult(
      blockNumber: blockNumber ?? this.blockNumber,
      timeStamp: timeStamp ?? this.timeStamp,
      hash: hash ?? this.hash,
      from: from ?? this.from,
      to: to ?? this.to,
      value: value ?? this.value,
      contractAddress: contractAddress ?? this.contractAddress,
      input: input ?? this.input,
      type: type ?? this.type,
      gas: gas ?? this.gas,
      gasUsed: gasUsed ?? this.gasUsed,
      traceId: traceId ?? this.traceId,
      isError: isError ?? this.isError,
      errCode: errCode ?? this.errCode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'blockNumber': blockNumber,
      'timeStamp': timeStamp,
      'hash': hash,
      'from': from,
      'to': to,
      'value': value,
      'contractAddress': contractAddress,
      'input': input,
      'type': type,
      'gas': gas,
      'gasUsed': gasUsed,
      'traceId': traceId,
      'isError': isError,
      'errCode': errCode,
    };
  }

  factory EtherScanTxInternalResult.fromMap(Map<String, dynamic> map) {
    return EtherScanTxInternalResult(
      blockNumber: map['blockNumber'],
      timeStamp: map['timeStamp'],
      hash: map['hash'],
      from: map['from'],
      to: map['to'],
      value: map['value'],
      contractAddress: map['contractAddress'],
      input: map['input'],
      type: map['type'],
      gas: map['gas'],
      gasUsed: map['gasUsed'],
      traceId: map['traceId'],
      isError: map['isError'],
      errCode: map['errCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanTxInternalResult.fromJson(String source) =>
      EtherScanTxInternalResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props {
    return [
      blockNumber,
      timeStamp,
      hash,
      from,
      to,
      value,
      contractAddress,
      input,
      type,
      gas,
      gasUsed,
      traceId,
      isError,
      errCode,
    ];
  }
}
