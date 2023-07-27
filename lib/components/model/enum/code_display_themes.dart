import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';

/// Enum for themes that can be set in the [CodeDisplay] widget.
/// Themes are recreacted as similiar as possible from https://carbon.now.sh/
enum CodeDisplayColorThemes {
  /// Night Owl theme
  night3024(
    Color(0xFF0D0702),
    Color(0xFFCC9E53),
    Color(0xFF018848),
    Color(0xFF018FCE),
    Color(0xFFE72924),
    Color(0xFFFFE73F),
    Color(0xFFFFFFFF),
  ),

  /// A11y Dark theme
  a11yDark(
    Color(0xFF262626),
    Color(0xFFD1C9A5),
    Color(0xFF00DAD9),
    Color(0xFF00DAD9),
    Color(0xFBF99272),
    Color(0xFFFFCF39),
    Color(0xFFCECECE),
  ),

  /// Blackboard theme
  blackboard(
    Color(0xFF0D121D),
    Color(0xFFA09FA0),
    Color(0xFFFF5920),
    Color(0xFFFF5920),
    Color(0xFFFFD747),
    Color(0xFF3ABD46),
    Color(0xFFCECECE),
  ),

  /// Base 16 theme
  base16Dark(
    Color(0xFF151515),
    Color(0xFF8B4A32),
    Color(0xFF829D56),
    Color(0xFF4F95AA),
    Color(0xFFAF393B),
    Color(0xFFFDB572),
    Color(0xFFD2D1D2),
  ),

  /// Base 16 light theme
  base16Light(
    Color(0xFFF3F3F3),
    Color(0xFF8B4A32),
    Color(0xFF829D56),
    Color(0xFF4F95AA),
    Color(0xFFAF393B),
    Color(0xFFFDB572),
    Color(0xFFD2D1D2),
  ),

  /// Cobalt theme
  cobalt(
    Color(0xFF002036),
    Color(0xFF006BCC),
    Color(0xFF72F8F8),
    Color(0xFF72F8F8),
    Color(0xFFFFE982),
    Color(0xFF00C835),
    Color(0xFFD2D1D2),
  ),

  /// Dracula Pro theme
  draculaPro(
    Color(0xFF1F1E26),
    Color(0xFF6B669A),
    Color(0xFF64FC82),
    Color(0xFFFFFFFF),
    Color(0xFFFC76B2),
    Color(0xFFF4F380),
    Color(0xFFD2D1D2),
  ),

  /// Duotone theme
  duotone(
    Color(0xFF25232D),
    Color(0xFF5E5B74),
    Color(0xFFFFC494),
    Color(0xFF645BDB),
    Color(0xFFFFC494),
    Color(0xFFF5A76A),
    Color(0xFFD2D1D2),
  ),

  /// Hopscotch theme
  hopscotch(
    Color(0xFF2D252B),
    Color(0xFFB52F17),
    Color(0xFF7EB747),
    Color(0xFF0380AA),
    Color(0xFFE93E45),
    Color(0xFFFFC35E),
    Color(0xFFD2D1D2),
  ),

  /// Lucario theme
  lucario(
    Color(0xFF213745),
    Color(0xFF3A8EC0),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFE93E45),
    Color(0xFFDFCD73),
    Color(0xFFD2D1D2),
  ),

  /// Material theme
  material(
    Color(0xFF213745),
    Color(0xFF43626D),
    Color(0xFF62AAF9),
    Color(0xFF60C4BC),
    Color(0xFFB783D3),
    Color(0xFFAED885),
    Color(0xFFD2D1D2),
  ),

  /// Monokai theme
  monokai(
    Color(0xFF23241F),
    Color(0xFF666051),
    Color(0xFFFFFFFF),
    Color(0xFF72F6F4),
    Color(0xFFFF2766),
    Color(0xFFE8D475),
    Color(0xFFD2D1D2),
  ),

  /// Nightowl theme
  nightowl(
    Color(0xFF001622),
    Color(0xFF4F5863),
    Color(0xFF64A2F8),
    Color(0xFF64A2F8),
    Color(0xFFC289DF),
    Color(0xFFE8B484),
    Color(0xFFD2D1D2),
  ),

  /// Nord theme
  nord(
    Color(0xFF272E37),
    Color(0xFF4F5863),
    Color(0xFF6DB7C7),
    Color(0xFF6DB7C7),
    Color(0xFF6790AC),
    Color(0xFF96B585),
    Color(0xFFD2D1D2),
  ),

  /// Oceanic Next theme
  oceanicNext(
    Color(0xFF272E37),
    Color(0xFF566771),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFC089B8),
    Color(0xFF96B585),
    Color(0xFFD2D1D2),
  ),

  /// One Light theme
  oneLight(
    Color(0xFFF9F9F9),
    Color(0xFFA4A5AA),
    Color(0xFFEB616B),
    Color(0xFFF24C44),
    Color(0xFFC089B8),
    Color(0xFF34954D),
    Color(0xFFD2D1D2),
  ),

  /// One Dark theme
  oneDark(
    Color(0xFF23272D),
    Color(0xFF505964),
    Color(0xFFE25E68),
    Color(0xFFE25E68),
    Color(0xFFC089B8),
    Color(0xFF86B774),
    Color(0xFFD2D1D2),
  ),

  /// Panda theme
  panda(
    Color(0xFF242526),
    Color(0xFF5B606C),
    Color(0xFFFFAE6A),
    Color(0xFFFF91B7),
    Color(0xFFFB6BA6),
    Color(0xFF02EDCC),
    Color(0xFFD2D1D2),
  ),

  /// Paraiso theme
  paraiso(
    Color(0xFF2B1C28),
    Color(0xFFF2619A),
    Color(0xFF0EAC7D),
    Color(0xFF02A9E0),
    Color(0xFFEE524C),
    Color(0xFFFEB939),
    Color(0xFF9B9693),
  ),

  /// Setti theme
  seti(
    Color(0xFF151717),
    Color(0xFF32454C),
    Color(0xFF19ADD3),
    Color(0xFF976CB7),
    Color(0xFFE7C169),
    Color(0xFFFEB939),
    Color(0xFFB7BBBA),
  ),

  /// Shades of purple theme
  shadesOfPurple(
    Color(0xFF252749),
    Color(0xFFA95DF2),
    Color(0xFF76FFFE),
    Color(0xFF76FFFE),
    Color(0xFFFE912B),
    Color(0xFF8AFC90),
    Color(0xFFB7BBBA),
  ),

  /// Solarized Dark theme
  solarizedDark(
    Color(0xFF00262F),
    Color(0xFF455F66),
    Color(0xFF708688),
    Color(0xFFB67C23),
    Color(0xFFD04120),
    Color(0xFF748725),
    Color(0xFFB7BBBA),
  ),

  /// Solarized Light theme
  solarizedLight(
    Color(0xFFFFF4E1),
    Color(0xFF455F66),
    Color(0xFF708688),
    Color(0xFFB67C23),
    Color(0xFFD04120),
    Color(0xFF748725),
    Color(0xFFB7BBBA),
  ),

  /// Synthwave84 theme
  synthWave84(
    Color(0xFF261F32),
    Color(0xFF57689D),
    Color(0xFFFF2E9F),
    Color(0xFFFF2E9F),
    Color(0xFFE4DAD0),
    Color(0xFFFE7F3F),
    Color(0xFFB7BBBA),
  ),

  /// Twilight theme
  twilight(
    Color(0xFF141414),
    Color(0xFF646464),
    Color(0xFF4E6883),
    Color(0xFF4E6883),
    Color(0xFFFBE794),
    Color(0xFF818E62),
    Color(0xFFB7BBBA),
  ),

  /// Verminal theme
  verminal(
    Color(0xFF171A1B),
    Color(0xFF4C555F),
    Color(0xFFF38B92),
    Color(0xFFFBFBFB),
    Color(0xFF71CDE9),
    Color(0xFF84B472),
    Color(0xFFB7BBBA),
  ),

  /// VSCode theme
  vscode(
    Color(0xFF1C1C1C),
    Color(0xFF56894F),
    Color(0xFF7DD8FB),
    Color(0xFF7DD8FB),
    Color(0xFFB37DB5),
    Color(0xFFD0850B),
    Color(0xFFCECECE),
  ),

  /// Yeti theme
  yeti(
    Color(0xFFEAE7E5),
    Color(0xFFD4C5BD),
    Color(0xFF20AFD4),
    Color(0xFF986CB8),
    Color(0xFF93AF6A),
    Color(0xFF7FB9D0),
    Color(0xFFB7BBBA),
  ),

  /// Zenburn theme
  zenburn(
    Color(0xFF373737),
    Color(0xFF6D9073),
    Color(0xFFE4A587),
    Color(0xFFE4A587),
    Color(0xFFF3D9AA),
    Color(0xFFCE8889),
    Color(0xFFB7BBBA),
  ),

  /// The following themes were already included inside
  /// of the `dart_code_viewer_x` package.

  /// DartCodeViewer light theme
  dartCodeViewerLight(
    Color(0xFFF5F5F5),
    Color(0xFFD81B60),
    Color(0xFF37474F),
    Color(0xFF9C27B0),
    Color(0xFF3F51B5),
    Color(0xFF388E3C),
    Color(0xFF37474F),
  ),

  /// DartCodeViewer light alt theme
  dartCodeViewerLightAlt(
    Color(0xFFEEEEEE),
    Color(0xFF999999),
    Color(0xFF000000),
    Color(0xFF673AB7),
    Color(0xFF4285F4),
    Color(0xFF0F9D58),
    Color(0xFFA3A3A3),
  ),

  /// DartCodeViewer dark theme
  dartCodeViewerDark(
    Color(0xFF212121),
    Color(0xFFF06292),
    Color(0xFFECEFF1),
    Color(0xFFCE93D8),
    Color(0xFF4DD0E1),
    Color(0xFF9CCC65),
    Color(0xFFA3A3A3),
  ),

  /// DartCodeViewer dark alt theme
  dartCodeViewerDarkAlt(
    Color(0xFF000000),
    Color(0xFFAAAAAA),
    Color(0xFFFFFFFF),
    Color(0xFFFF8A65),
    Color(0xFF7BAAF7),
    Color(0xFF57BB8A),
    Color(0xFFA3A3A3),
  ),

  /// DartCodeViewer design dark theme
  dartCodeViewerDesignDark(
    Color(0xFF263238),
    Color(0xFF607D8B),
    Color(0xFFFFFFFF),
    Color(0xFFFF8A80),
    Color(0xFF26C6DA),
    Color(0xFF00BFA4),
    Color(0xFF90A4AE),
  ),

  /// DartCodeViewer Google IO 2017 theme
  dartCodeViewerio17(
    Color(0xFF263238),
    Color(0xFFFF5CB4),
    Color(0xFFFFFFFF),
    Color(0xFFFF8857),
    Color(0xFF00E4FF),
    Color(0xFF1CE8b5),
    Color(0xFF90A4AE),
  ),

  /// DartCodeViewer Google IO 2019 theme
  dartCodeViewerio19(
    Color(0xFF202124),
    Color(0xFF9AA0A6),
    Color(0xFFFFFFFF),
    Color(0xFFEE675C),
    Color(0xFF669DF6),
    Color(0xFF5BB974),
    Color(0xFF9AA0A6),
  ),

  /// DartCodeViewer Flutter Interact 2019 theme
  dartCodeViewerFlutterInteract19(
    Color(0xFF241e30),
    Color(0xFF808080),
    Color(0xFFFAFBFB),
    Color(0xFFD65BAD),
    Color(0xFF1CDEC9),
    Color(0xFFffa65c),
    Color(0xFF8BE9FD),
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
