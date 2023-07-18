import 'package:flutter/material.dart';

enum CodeDisplayColorThemes {
  // Themes from https://carbon.now.sh/
  vscode(
    Color(0xFF1C1C1C),
    Color(0xFF56894F),
    Color(0xFF7DD8FB),
    Color(0xFF7DD8FB),
    Color(0xFFB37DB5),
    Color(0xFFD0850B),
    Color(0xFFCECECE),
  ),
  night3024(
    Color(0xFF0D0702),
    Color(0xFFCC9E53),
    Color(0xFF018848),
    Color(0xFF018FCE),
    Color(0xFFE72924),
    Color(0xFFFFE73F),
    Color(0xFFFFFFFF),
  ),
  a11yDark(
    Color(0xFF262626),
    Color(0xFFD1C9A5),
    Color(0xFF00DAD9),
    Color(0xFF00DAD9),
    Color(0xFBF99272),
    Color(0xFFFFCF39),
    Color(0xFFCECECE),
  ),
  blackboard(
    Color(0xFF0D121D),
    Color(0xFFA09FA0),
    Color(0xFFFF5920),
    Color(0xFFFF5920),
    Color(0xFFFFD747),
    Color(0xFF3ABD46),
    Color(0xFFCECECE),
  ),
  base16Dark(
    Color.fromRGBO(21, 21, 21, 1),
    Color.fromRGBO(139, 74, 50, 1),
    Color.fromRGBO(130, 157, 86, 1),
    Color.fromRGBO(79, 149, 170, 1),
    Color.fromRGBO(175, 57, 59, 1),
    Color.fromRGBO(253, 181, 114, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  base16Light(
    Color.fromRGBO(243, 243, 243, 1),
    Color.fromRGBO(139, 74, 50, 1),
    Color.fromRGBO(130, 157, 86, 1),
    Color.fromRGBO(79, 149, 170, 1),
    Color.fromRGBO(175, 57, 59, 1),
    Color.fromRGBO(253, 181, 114, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  cobalt(
    Color.fromRGBO(0, 32, 54, 1),
    Color.fromRGBO(0, 107, 204, 1),
    Color.fromRGBO(114, 248, 248, 1),
    Color.fromRGBO(114, 248, 248, 1),
    Color.fromRGBO(255, 233, 130, 1),
    Color.fromRGBO(0, 200, 53, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  ;

  const CodeDisplayColorThemes(
    this.backgroundColor,
    this.commentColor,
    this.baseColor,
    this.classColor,
    this.keywordColor,
    this.stringColor,
    this.punctuationColor,
  );

  /// Background color of code window
  final Color backgroundColor;

  /// Color of comments
  final Color commentColor;

  /// Color of function names and variables
  final Color baseColor;

  /// Color of classes
  final Color classColor;

  /// Color of keywords like class, const, final, extends
  final Color keywordColor;

  /// Color of strings for example inside a Text widget
  /// Text("This will be colored")
  final Color stringColor;

  /// Color of ;{}:()
  final Color punctuationColor;
}
