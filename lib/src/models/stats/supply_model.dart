import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanSupplyModel with EquatableMixin {
  final String status;
  final String message;
  final String result;

  EtherScanSupplyModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanSupplyModel copyWith({
    String? status,
    String? message,
    String? result,
  }) {
    return EtherScanSupplyModel(
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

  factory EtherScanSupplyModel.empty() {
    return EtherScanSupplyModel(
      status: 'empty',
      message: '',
      result: '',
    );
  }

  factory EtherScanSupplyModel.fromMap(Map<String, dynamic> map) {
    return EtherScanSupplyModel(
      status: map['status'],
      message: map['message'],
      result: map['result'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanSupplyModel.fromJson(String source) =>
      EtherScanSupplyModel.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}
