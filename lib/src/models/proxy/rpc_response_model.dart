import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanRpcResponseModel with EquatableMixin {
  final String jsonrpc;
  final int id;
  final String result;
  EtherScanRpcResponseModel({
    required this.jsonrpc,
    required this.id,
    required this.result,
  });

  EtherScanRpcResponseModel copyWith({
    String? jsonrpc,
    int? id,
    String? result,
  }) {
    return EtherScanRpcResponseModel(
      jsonrpc: jsonrpc ?? this.jsonrpc,
      id: id ?? this.id,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'jsonrpc': jsonrpc,
      'id': id,
      'result': result,
    };
  }

  factory EtherScanRpcResponseModel.empty() {
    return EtherScanRpcResponseModel(
      jsonrpc: '',
      id: 0,
      result: '',
    );
  }

  factory EtherScanRpcResponseModel.fromMap(Map<String, dynamic> map) {
    return EtherScanRpcResponseModel(
      jsonrpc: map['jsonrpc'],
      id: map['id'],
      result: map['result'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanRpcResponseModel.fromJson(String source) =>
      EtherScanRpcResponseModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [jsonrpc, id, result];
}
