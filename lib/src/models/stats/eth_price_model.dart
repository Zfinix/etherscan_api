import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherScanPriceModel with EquatableMixin {
  final String status;
  final String message;
  final EtherScanPriceResult result;

  EtherScanPriceModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherScanPriceModel copyWith({
    String? status,
    String? message,
    EtherScanPriceResult? result,
  }) {
    return EtherScanPriceModel(
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

  factory EtherScanPriceModel.empty() {
    return EtherScanPriceModel(
      status: 'empty',
      message: '',
      result: EtherScanPriceResult.empty(),
    );
  }

  factory EtherScanPriceModel.fromMap(Map<String, dynamic> map) {
    return EtherScanPriceModel(
      status: map['status'],
      message: map['message'],
      result: EtherScanPriceResult.fromMap(map['result']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanPriceModel.fromJson(String source) =>
      EtherScanPriceModel.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [status, message, result];
}

class EtherScanPriceResult with EquatableMixin {
  final String ethbtc;
  final String ethbtc_timestamp;
  final String ethusd;
  final String ethusd_timestamp;

  EtherScanPriceResult({
    required this.ethbtc,
    required this.ethbtc_timestamp,
    required this.ethusd,
    required this.ethusd_timestamp,
  });

  EtherScanPriceResult copyWith({
    String? ethbtc,
    String? ethbtc_timestamp,
    String? ethusd,
    String? ethusd_timestamp,
  }) {
    return EtherScanPriceResult(
      ethbtc: ethbtc ?? this.ethbtc,
      ethbtc_timestamp: ethbtc_timestamp ?? this.ethbtc_timestamp,
      ethusd: ethusd ?? this.ethusd,
      ethusd_timestamp: ethusd_timestamp ?? this.ethusd_timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ethbtc': ethbtc,
      'ethbtc_timestamp': ethbtc_timestamp,
      'ethusd': ethusd,
      'ethusd_timestamp': ethusd_timestamp,
    };
  }

  factory EtherScanPriceResult.empty() {
    return EtherScanPriceResult(
      ethbtc: '',
      ethbtc_timestamp: '',
      ethusd: '',
      ethusd_timestamp: '',
    );
  }

  factory EtherScanPriceResult.fromMap(Map<String, dynamic> map) {
    return EtherScanPriceResult(
      ethbtc: map['ethbtc'],
      ethbtc_timestamp: map['ethbtc_timestamp'],
      ethusd: map['ethusd'],
      ethusd_timestamp: map['ethusd_timestamp'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherScanPriceResult.fromJson(String source) =>
      EtherScanPriceResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        ethbtc,
        ethbtc_timestamp,
        ethusd,
        ethusd_timestamp,
      ];
}
