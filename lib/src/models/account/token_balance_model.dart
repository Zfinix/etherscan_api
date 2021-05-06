import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanTokenBalanceModel with EquatableMixin {
  final String status;
  final String message;
  final String result;
  EtherScanTokenBalanceModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanTokenBalanceModel copyWith({
    String? status,
    String? message,
    String? result,
  }) {
    return EtherScanTokenBalanceModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result,
    };
  }

  factory EtherScanTokenBalanceModel.fromMap(Map<String, dynamic> map) {
    return EtherScanTokenBalanceModel(
      status: map['status'],
      message: map['message'],
      result: map['result'],
    );
  }

  factory EtherScanTokenBalanceModel.empty() {
    return EtherScanTokenBalanceModel(
      status: 'empty',
      message: '',
      result: '',
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanTokenBalanceModel.fromJson(String source) =>
      EtherScanTokenBalanceModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}
