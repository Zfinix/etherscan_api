import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanAbiModel with EquatableMixin {
  final String status;
  final String message;
  final String result;

  EtherScanAbiModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanAbiModel copyWith({
    String? status,
    String? message,
    String? result,
  }) {
    return EtherScanAbiModel(
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

  factory EtherScanAbiModel.empty() {
    return EtherScanAbiModel(
      status: 'empty',
      message: '',
      result: '',
    );
  }

  factory EtherScanAbiModel.fromMap(Map<String, dynamic> map) {
    return EtherScanAbiModel(
      status: map['status'],
      message: map['message'],
      result: map['result'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanAbiModel.fromJson(String source) =>
      EtherScanAbiModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}
