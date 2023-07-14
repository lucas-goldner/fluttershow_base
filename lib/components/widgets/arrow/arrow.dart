import 'package:flutter/cupertino.dart';

/// A widget that represents an arrow.
class Arrow extends StatelessWidget {
  /// Constructs an Arrow widget.
  ///
  /// [color] is the color of the arrow icon.
  ///
  /// [size] is the size of the arrow.
  const Arrow({
    this.color,
    this.size = const Size(24, 24),
    super.key,
  });

  /// The color of the arrow icon.
  final Color? color;

  /// The size of the arrow icon and the associated text.
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Icon(
        CupertinoIcons.arrow_right,
        color: color,
        size: size.height,
      ),
    );
  }
}
