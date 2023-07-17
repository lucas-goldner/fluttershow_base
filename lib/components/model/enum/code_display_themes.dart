import 'package:flutter/widgets.dart';

enum CodeDisplayColorThemes {
  vscode(
    Color(0xFF1C1C1C),
    Color(0xFF7DD8FB),
    Color(0xFF7DD8FB),
    Color(0xFF7DD8FB),
    Color(0xFFB37DB5),
    Color(0xFFD0850B),
    Color(0xFFCECECE),
  ),
  night3024(
    Color(0xFF0D0702),
    Color(0xFF018FCE),
    Color(0xFF018848),
    Color(0xFF018FCE),
    Color(0xFFE72924),
    Color(0xFFFFE73F),
    Color(0xFFFFFFFF),
  );

  const CodeDisplayColorThemes(
    this.backgroundColor,
    this.commentColor,
    this.baseColor,
    this.classColor,
    this.keywordColor,
    this.stringColor,
    this.punctuationColor,
  );

  final Color backgroundColor;
  final Color commentColor;
  final Color baseColor;
  final Color classColor;
  final Color keywordColor;
  final Color stringColor;
  final Color punctuationColor;
}
