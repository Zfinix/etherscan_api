import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanBalanceModel with EquatableMixin {
  final String status;
  final String message;
  final List<EtherScanBalanceResult>? result;
  EtherScanBalanceModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanBalanceModel copyWith({
    String? status,
    String? message,
    List<EtherScanBalanceResult>? result,
  }) {
    return EtherScanBalanceModel(
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

  factory EtherScanBalanceModel.empty() {
    return EtherScanBalanceModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory EtherScanBalanceModel.fromMap(Map<String, dynamic> map) {
    return EtherScanBalanceModel(
      status: map['status'],
      message: map['message'],
      result: List<EtherScanBalanceResult>.from(
          map['result']?.map((x) => EtherScanBalanceResult.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanBalanceModel.fromJson(String source) =>
      EtherScanBalanceModel.fromMap(json.decode(source));
  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [status, message, result ?? []];
}

class EtherScanBalanceResult with EquatableMixin {
  final String account;
  final String balance;
  EtherScanBalanceResult({
    required this.account,
    required this.balance,
  });

  EtherScanBalanceResult copyWith({
    String? account,
    String? balance,
  }) {
    return EtherScanBalanceResult(
      account: account ?? this.account,
      balance: balance ?? this.balance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'account': account,
      'balance': balance,
    };
  }

  factory EtherScanBalanceResult.fromMap(Map<String, dynamic> map) {
    return EtherScanBalanceResult(
      account: map['account'],
      balance: map['balance'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanBalanceResult.fromJson(String source) =>
      EtherScanBalanceResult.fromMap(json.decode(source));

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [account, balance];
}
