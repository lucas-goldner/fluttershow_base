import 'package:flutter/widgets.dart';

/// A widget that displays text with a gradient effect.
class GradientText extends StatelessWidget {
  /// Constructs a GradientText widget.
  ///
  /// [text] is the text to be displayed.
  ///
  /// [gradient] is the gradient applied to the text.
  ///
  /// [style] is the text style to be applied.
  ///
  /// [strutStyle] is the strut style to be applied.
  ///
  /// [textAlign] is the text alignment to be applied.
  ///
  /// [textDirection] is the text direction to be applied.
  ///
  /// [locale] is the locale to be applied.
  ///
  /// [softWrap] controls whether text should break at soft line breaks.
  ///
  /// [overflow] determines how text should be handled when it overflows.
  ///
  /// [textScaleFactor] is the number of font pixels for each logical pixel.
  ///
  /// [maxLines] is the maximum number of lines for the text to span.
  ///
  /// [semanticsLabel] is a label for the text used by screen reading software.
  ///
  /// [textWidthBasis] determines how the width of the text is calculated.
  ///
  /// [textHeightBehavior] specifies how to handle the height of the text.
  ///
  /// [selectionColor] specifies the color of the selection highlight.
  const GradientText(
    this.text, {
    required this.gradient,
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  });

  /// The text to be displayed.
  final String text;

  /// The gradient applied to the text.
  final Gradient gradient;

  /// The text style to be applied.
  final TextStyle? style;

  /// The strut style to be applied.
  final StrutStyle? strutStyle;

  /// The text alignment to be applied.
  final TextAlign? textAlign;

  /// The text direction to be applied.
  final TextDirection? textDirection;

  /// The locale to be applied.
  final Locale? locale;

  /// Controls whether text should break at soft line breaks.
  final bool? softWrap;

  /// Determines how text should be handled when it overflows.
  final TextOverflow? overflow;

  /// The number of font pixels for each logical pixel.
  final double? textScaleFactor;

  /// The maximum number of lines for the text to span.
  final int? maxLines;

  /// A label for the text used by screen reading software.
  final String? semanticsLabel;

  /// Determines how the width of the text is calculated.
  final TextWidthBasis? textWidthBasis;

  /// Specifies how to handle the height of the text.
  final TextHeightBehavior? textHeightBehavior;

  /// Specifies the color of the selection highlight.
  final Color? selectionColor;

  @override
  Widget build(BuildContext context) => ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: Text(
          text,
          style: style,
          strutStyle: strutStyle,
          textAlign: textAlign,
          textDirection: textDirection,
          locale: locale,
          softWrap: softWrap,
          overflow: overflow,
          textScaleFactor: textScaleFactor,
          maxLines: maxLines,
          semanticsLabel: semanticsLabel,
          textWidthBasis: textWidthBasis,
          textHeightBehavior: textHeightBehavior,
          selectionColor: selectionColor,
        ),
      );
}
