import 'package:flutter/material.dart';

enum CodeDisplayColorThemes {
  // Themes from https://carbon.now.sh/

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
  oceanicNext(
    Color.fromRGBO(39, 46, 55, 1),
    Color.fromRGBO(86, 103, 113, 1),
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(255, 255, 255, 1),
    Color.fromRGBO(192, 137, 184, 1),
    Color.fromRGBO(150, 181, 133, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  oneLight(
    Color.fromRGBO(249, 249, 249, 1),
    Color.fromRGBO(164, 165, 170, 1),
    Color.fromRGBO(235, 97, 107, 1),
    Color.fromRGBO(242, 76, 68, 1),
    Color.fromRGBO(192, 137, 184, 1),
    Color.fromRGBO(52, 149, 77, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  oneDark(
    Color.fromRGBO(35, 39, 45, 1),
    Color.fromRGBO(80, 89, 100, 1),
    Color.fromRGBO(226, 94, 104, 1),
    Color.fromRGBO(226, 94, 104, 1),
    Color.fromRGBO(192, 137, 184, 1),
    Color.fromRGBO(134, 183, 116, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  panda(
    Color.fromRGBO(36, 37, 38, 1),
    Color.fromRGBO(91, 96, 108, 1),
    Color.fromRGBO(255, 174, 106, 1),
    Color.fromRGBO(255, 145, 183, 1),
    Color.fromRGBO(251, 107, 166, 1),
    Color.fromRGBO(2, 237, 204, 1),
    Color.fromRGBO(210, 209, 210, 1),
  ),
  paraiso(
    Color.fromRGBO(43, 28, 40, 1),
    Color.fromRGBO(242, 97, 154, 1),
    Color.fromRGBO(14, 172, 125, 1),
    Color.fromRGBO(2, 169, 224, 1),
    Color.fromRGBO(238, 82, 76, 1),
    Color.fromRGBO(254, 185, 57, 1),
    Color.fromRGBO(155, 150, 147, 1),
  ),
  seti(
    Color.fromRGBO(21, 23, 23, 1),
    Color.fromRGBO(50, 69, 76, 1),
    Color.fromRGBO(25, 173, 211, 1),
    Color.fromRGBO(151, 108, 183, 1),
    Color.fromRGBO(231, 193, 105, 1),
    Color.fromRGBO(254, 185, 57, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  shadesOfPurple(
    Color.fromRGBO(37, 39, 73, 1),
    Color.fromRGBO(169, 93, 242, 1),
    Color.fromRGBO(118, 255, 254, 1),
    Color.fromRGBO(118, 255, 254, 1),
    Color.fromRGBO(254, 145, 43, 1),
    Color.fromRGBO(138, 252, 144, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  solarizedDark(
    Color.fromRGBO(0, 38, 47, 1),
    Color.fromRGBO(69, 95, 102, 1),
    Color.fromRGBO(112, 134, 136, 1),
    Color.fromRGBO(182, 124, 35, 1),
    Color.fromRGBO(208, 65, 32, 1),
    Color.fromRGBO(116, 135, 37, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  solarizedLight(
    Color.fromRGBO(255, 244, 225, 1),
    Color.fromRGBO(69, 95, 102, 1),
    Color.fromRGBO(112, 134, 136, 1),
    Color.fromRGBO(182, 124, 35, 1),
    Color.fromRGBO(208, 65, 32, 1),
    Color.fromRGBO(116, 135, 37, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  synthWave84(
    Color.fromRGBO(38, 31, 50, 1),
    Color.fromRGBO(87, 104, 157, 1),
    Color.fromRGBO(255, 46, 159, 1),
    Color.fromRGBO(255, 46, 159, 1),
    Color.fromRGBO(228, 218, 208, 1),
    Color.fromRGBO(254, 127, 63, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  twilight(
    Color.fromRGBO(20, 20, 20, 1),
    Color.fromRGBO(100, 100, 100, 1),
    Color.fromRGBO(78, 104, 131, 1),
    Color.fromRGBO(78, 104, 131, 1),
    Color.fromRGBO(251, 231, 148, 1),
    Color.fromRGBO(129, 142, 98, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  verminal(
    Color.fromRGBO(23, 26, 27, 1),
    Color.fromRGBO(76, 85, 95, 1),
    Color.fromRGBO(243, 139, 146, 1),
    Color.fromRGBO(251, 251, 251, 1),
    Color.fromRGBO(113, 205, 233, 1),
    Color.fromRGBO(132, 180, 114, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  vscode(
    Color(0xFF1C1C1C),
    Color(0xFF56894F),
    Color(0xFF7DD8FB),
    Color(0xFF7DD8FB),
    Color(0xFFB37DB5),
    Color(0xFFD0850B),
    Color(0xFFCECECE),
  ),
  yeti(
    Color.fromRGBO(234, 231, 229, 1),
    Color.fromRGBO(212, 197, 189, 1),
    Color.fromRGBO(32, 175, 212, 1),
    Color.fromRGBO(152, 108, 184, 1),
    Color.fromRGBO(147, 175, 106, 1),
    Color.fromRGBO(127, 185, 208, 1),
    Color.fromRGBO(183, 187, 186, 1),
  ),
  zenburn(
    Color.fromRGBO(55, 55, 55, 1),
    Color.fromRGBO(109, 144, 115, 1),
    Color.fromRGBO(228, 165, 135, 1),
    Color.fromRGBO(228, 165, 135, 1),
    Color.fromRGBO(243, 217, 170, 1),
    Color.fromRGBO(206, 136, 137, 1),
    Color.fromRGBO(183, 187, 186, 1),
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
