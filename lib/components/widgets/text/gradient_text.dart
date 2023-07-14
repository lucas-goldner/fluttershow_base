import 'package:flutter/widgets.dart';

/// A widget that displays text with a gradient effect.
class GradientText extends StatelessWidget {
  /// Constructs a GradientText widget.
  ///
  /// [text] is the text to be displayed.
  ///
  /// [gradient] is the gradient applied to the text.
  ///
  /// [style] is the optional text style to be applied.
  const GradientText(
    this.text, {
    required this.gradient,
    super.key,
    this.style,
  });

  /// The text to be displayed.
  final String text;

  /// The gradient applied to the text.
  final Gradient gradient;

  /// The optional text style to be applied.
  final TextStyle? style;

  @override
  Widget build(BuildContext context) => ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: Text(text, style: style),
      );
}
