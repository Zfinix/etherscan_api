import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanTxStatusModel with EquatableMixin {
  final String status;
  final String message;
  final EtherScanTxStatusResult result;
  EtherScanTxStatusModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanTxStatusModel copyWith({
    String? status,
    String? message,
    EtherScanTxStatusResult? result,
  }) {
    return EtherScanTxStatusModel(
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

  factory EtherScanTxStatusModel.empty() {
    return EtherScanTxStatusModel(
      status: 'empty',
      message: '',
      result: EtherScanTxStatusResult.empty(),
    );
  }

  factory EtherScanTxStatusModel.fromMap(Map<String, dynamic> map) {
    return EtherScanTxStatusModel(
      status: map['status'],
      message: map['message'],
      result: EtherScanTxStatusResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanTxStatusModel.fromJson(String source) =>
      EtherScanTxStatusModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}

class EtherScanTxStatusResult with EquatableMixin {
  final String isError;
  final String errDescription;
  EtherScanTxStatusResult({
    required this.isError,
    required this.errDescription,
  });

  EtherScanTxStatusResult copyWith({
    String? isError,
    String? errDescription,
  }) {
    return EtherScanTxStatusResult(
      isError: isError ?? this.isError,
      errDescription: errDescription ?? this.errDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isError': isError,
      'errDescription': errDescription,
    };
  }

  factory EtherScanTxStatusResult.empty() {
    return EtherScanTxStatusResult(
      isError: '',
      errDescription: '',
    );
  }

  factory EtherScanTxStatusResult.fromMap(Map<String, dynamic> map) {
    return EtherScanTxStatusResult(
      isError: map['isError'],
      errDescription: map['errDescription'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanTxStatusResult.fromJson(String source) =>
      EtherScanTxStatusResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [isError, errDescription];
}
