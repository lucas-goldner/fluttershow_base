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
  draculaPro(
    Color.fromRGBO(31, 30, 38, 1),
    Color.fromRGBO(107, 102, 154, 1),
    Color.fromRGBO(100, 252, 130, 1),
    Colors.white,
    Color.fromRGBO(252, 118, 178, 1),
    Color.fromRGBO(244, 243, 128, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  duotone(
    Color.fromRGBO(37, 35, 45, 1),
    Color.fromRGBO(94, 91, 116, 1),
    Color.fromRGBO(255, 196, 148, 1),
    Color.fromRGBO(100, 91, 219, 1),
    Color.fromRGBO(255, 196, 148, 1),
    Color.fromRGBO(245, 167, 106, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  hopscotch(
    Color.fromRGBO(45, 37, 43, 1),
    Color.fromRGBO(181, 47, 23, 1),
    Color.fromRGBO(126, 183, 71, 1),
    Color.fromRGBO(3, 128, 170, 1),
    Color.fromRGBO(233, 62, 69, 1),
    Color.fromRGBO(255, 195, 94, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  lucario(
    Color.fromRGBO(33, 55, 69, 1),
    Color.fromRGBO(58, 142, 192, 1),
    Colors.white,
    Colors.white,
    Color.fromRGBO(233, 62, 69, 1),
    Color.fromRGBO(223, 205, 115, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  material(
    Color.fromRGBO(33, 55, 69, 1),
    Color.fromRGBO(67, 98, 109, 1),
    Color.fromRGBO(98, 170, 249, 1),
    Color.fromRGBO(96, 196, 188, 1),
    Color.fromRGBO(183, 131, 211, 1),
    Color.fromRGBO(174, 216, 133, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  monokai(
    Color.fromRGBO(35, 36, 31, 1),
    Color.fromRGBO(102, 96, 81, 1),
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(114, 246, 244, 1),
    Color.fromRGBO(255, 39, 102, 1),
    Color.fromRGBO(232, 212, 117, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  nightowl(
    Color.fromRGBO(0, 22, 34, 1),
    Color.fromRGBO(79, 88, 99, 1),
    Color.fromRGBO(100, 162, 248, 1),
    Color.fromRGBO(100, 162, 248, 1),
    Color.fromRGBO(194, 137, 223, 1),
    Color.fromRGBO(232, 180, 132, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  nord(
    Color.fromRGBO(39, 46, 55, 1),
    Color.fromRGBO(79, 88, 99, 1),
    Color.fromRGBO(109, 183, 199, 1),
    Color.fromRGBO(109, 183, 199, 1),
    Color.fromRGBO(103, 144, 172, 1),
    Color.fromRGBO(150, 181, 133, 1),
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
