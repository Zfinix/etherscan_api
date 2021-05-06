import 'dart:convert';

import 'package:equatable/equatable.dart';

class EtherscanSourceCodeModel with EquatableMixin {
  final String status;
  final String message;
  final List<EtherscanSourceCodeResult?>? result;
  EtherscanSourceCodeModel({
    required this.status,
    required this.message,
    required this.result,
  });

  EtherscanSourceCodeModel copyWith({
    String? status,
    String? message,
    List<EtherscanSourceCodeResult>? result,
  }) {
    return EtherscanSourceCodeModel(
      status: status ?? this.status,
      message: message ?? this.message,
      result: result ?? this.result,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'message': message,
      'result': result?.map((x) => x?.toMap()).toList(),
    };
  }

  factory EtherscanSourceCodeModel.empty() {
    return EtherscanSourceCodeModel(
      status: 'empty',
      message: '',
      result: [],
    );
  }

  factory EtherscanSourceCodeModel.fromMap(Map<String, dynamic> map) {
    return EtherscanSourceCodeModel(
      status: map['status'],
      message: map['message'],
      result: List<EtherscanSourceCodeResult>.from(
        map['result']?.map(
          (x) => EtherscanSourceCodeResult.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherscanSourceCodeModel.fromJson(String source) =>
      EtherscanSourceCodeModel.fromMap(json.decode(source));

  @override
  List<Object> get props => [status, message, result ?? []];

  @override
  bool get stringify => true;
}

class EtherscanSourceCodeResult with EquatableMixin {
  final String sourceCode;
  final String abi;
  final String contractName;
  final String compilerVersion;
  final String optimizationUsed;
  final String runs;
  final String constructorArguments;
  final String evmVersion;
  final String library;
  final String licenseType;
  final String proxy;
  final String implementation;
  final String swarmSource;

  EtherscanSourceCodeResult({
    required this.sourceCode,
    required this.abi,
    required this.contractName,
    required this.compilerVersion,
    required this.optimizationUsed,
    required this.runs,
    required this.constructorArguments,
    required this.evmVersion,
    required this.library,
    required this.licenseType,
    required this.proxy,
    required this.implementation,
    required this.swarmSource,
  });

  EtherscanSourceCodeResult copyWith({
    String? sourceCode,
    String? abi,
    String? contractName,
    String? compilerVersion,
    String? optimizationUsed,
    String? runs,
    String? constructorArguments,
    String? evmVersion,
    String? library,
    String? licenseType,
    String? proxy,
    String? implementation,
    String? swarmSource,
  }) {
    return EtherscanSourceCodeResult(
      sourceCode: sourceCode ?? this.sourceCode,
      abi: abi ?? this.abi,
      contractName: contractName ?? this.contractName,
      compilerVersion: compilerVersion ?? this.compilerVersion,
      optimizationUsed: optimizationUsed ?? this.optimizationUsed,
      runs: runs ?? this.runs,
      constructorArguments: constructorArguments ?? this.constructorArguments,
      evmVersion: evmVersion ?? this.evmVersion,
      library: library ?? this.library,
      licenseType: licenseType ?? this.licenseType,
      proxy: proxy ?? this.proxy,
      implementation: implementation ?? this.implementation,
      swarmSource: swarmSource ?? this.swarmSource,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'SourceCode': sourceCode,
      'ABI': abi,
      'ContractName': contractName,
      'CompilerVersion': compilerVersion,
      'OptimizationUsed': optimizationUsed,
      'Runs': runs,
      'ConstructorArguments': constructorArguments,
      'EVMVersion': evmVersion,
      'Library': library,
      'LicenseType': licenseType,
      'Proxy': proxy,
      'Implementation': implementation,
      'SwarmSource': swarmSource,
    };
  }

  factory EtherscanSourceCodeResult.fromMap(Map<String, dynamic> map) {
    return EtherscanSourceCodeResult(
      sourceCode: map['SourceCode'],
      abi: map['ABI'],
      contractName: map['ContractName'],
      compilerVersion: map['CompilerVersion'],
      optimizationUsed: map['OptimizationUsed'],
      runs: map['Runs'],
      constructorArguments: map['ConstructorArguments'],
      evmVersion: map['EVMVersion'],
      library: map['Library'],
      licenseType: map['LicenseType'],
      proxy: map['Proxy'],
      implementation: map['Implementation'],
      swarmSource: map['SwarmSource'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EtherscanSourceCodeResult.fromJson(String source) =>
      EtherscanSourceCodeResult.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      sourceCode,
      abi,
      contractName,
      compilerVersion,
      optimizationUsed,
      runs,
      constructorArguments,
      evmVersion,
      library,
      licenseType,
      proxy,
      implementation,
      swarmSource,
    ];
  }
}
