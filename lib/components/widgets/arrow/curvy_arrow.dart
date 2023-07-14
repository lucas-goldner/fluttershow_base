import 'package:arrow_path/arrow_path.dart';
import 'package:flutter/material.dart';

/// A widget that represents a curvy arrow.
class CurvyArrow extends StatefulWidget {
  /// Constructs a CurvyArrow widget.
  ///
  /// [height] is the height of the curvy arrow.
  ///
  /// [width] is the width of the curvy arrow.
  ///
  /// [color] is the color of the curvy arrow.
  /// If not provided, the default color is used.
  const CurvyArrow(
    this.height,
    this.width, {
    this.color,
    super.key,
  });

  /// The height of the curvy arrow.
  final double height;

  /// The width of the curvy arrow.
  final double width;

  /// The color of the curvy arrow.
  final Color? color;

  @override
  State<CurvyArrow> createState() => _CurvyArrowState();
}

/// The state class for the CurvyArrow widget.
class _CurvyArrowState extends State<CurvyArrow> {
  @override
  Widget build(BuildContext context) => ClipRect(
        child: CustomPaint(
          size: Size(widget.width, widget.height),
          painter: CurvyArrowPainter(widget.color),
        ),
      );
}

/// The custom painter class for drawing the curvy arrow.
class CurvyArrowPainter extends CustomPainter {
  /// Constructs a CurvyArrowPainter object.
  ///
  /// [color] is the color of the curvy arrow.
  /// If not provided, the default color is used.
  CurvyArrowPainter(this.color);

  /// The color of the curvy arrow.
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 8.0;

    final path = Path()
      ..moveTo(size.width * 0.25, 60)
      ..relativeCubicTo(0, 0, size.width * 0.25, 50, size.width * 0.5, 0);

    if (color != null) {
      paint.color = color ?? Colors.black;
    }

    canvas.drawPath(ArrowPath.addTip(path), paint);
  }

  @override
  bool shouldRepaint(CurvyArrowPainter oldDelegate) =>
      color != oldDelegate.color;
}
