import 'dart:developer';

import 'package:dart_style/dart_style.dart';

String formatCode(String code) {
  final formatter = DartFormatter();

  try {
    return formatter.format(code);
  } on FormatterException catch (ex) {
    log('$ex');
    return code;
  }
}
