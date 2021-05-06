import 'package:equatable/equatable.dart';

class EtherScanFailure extends Equatable {
  final String message;
  final int code;

  EtherScanFailure({this.message = '', this.code = -1});

  @override
  bool? get stringify => true;

  @override
  List<Object> get props => [message, code];
}
