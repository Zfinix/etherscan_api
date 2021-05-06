import 'dart:convert';
import 'dart:io';

import 'package:logger/logger.dart';

String? stringifyMessage(dynamic message) {
  final decoder = JsonDecoder();
  final encoder = JsonEncoder.withIndent('  ');
  final color = AnsiColor.fg(15);

  if (message is String) {
    try {
      final raw = decoder.convert(message);
      return Platform.isAndroid
          ? color(encoder.convert(raw))
          : encoder.convert(raw);
    } catch (e) {
      return message.toString();
    }
  } else if (message is Map || message is Iterable) {
    return Platform.isAndroid
        ? color(encoder.convert(message))
        : encoder.convert(message);
  } else {
    return message.toString();
  }
}
