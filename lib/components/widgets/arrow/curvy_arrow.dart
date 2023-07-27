import 'package:arrow_path/arrow_path.dart';
import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/cubic_bezier.dart';

/// A widget that draws a curvy arrow.
///
/// The arrow is drawn using a cubic bezier curve. The properties of the curve
/// can be customized via the [cubicBezier] parameter.
/// The color and stroke width of the arrow can be customized
/// via the [color] and [strokeWidth] parameters respectively.
class CurvyArrow extends StatefulWidget {
  /// Constructs a CurvyArrow widget.
  ///
  /// [height] is the height of the curvy arrow.
  ///
  /// [width] is the width of the curvy arrow.
  ///
  /// [color] is the color of the curvy arrow.
  /// If not provided, the arrow is drawn in black.
  ///
  /// [strokeWidth] specifies the width of the arrow. If not provided, the arrow
  /// will have a stroke width of 5.0.
  ///
  /// [cubicBezier] specifies the parameters of the cubic bezier curve used to
  /// draw the arrow. If not provided, the arrow will be drawn with a default
  /// curve [CubicBezier.defaultCurve].
  const CurvyArrow(
    this.height,
    this.width, {
    this.color,
    this.strokeWidth,
    this.cubicBezier,
    super.key,
  });

  /// The height of the curvy arrow.
  final double height;

  /// The width of the curvy arrow.
  final double width;

  /// The color of the curvy arrow.
  final Color? color;

  /// The width of the stroke used to draw the arrow.
  final double? strokeWidth;

  /// The parameters for the cubic bezier curve used to draw the arrow.
  final CubicBezier? cubicBezier;

  @override
  State<CurvyArrow> createState() => _CurvyArrowState();
}

/// The state class for the CurvyArrow widget.
class _CurvyArrowState extends State<CurvyArrow> {
  @override
  Widget build(BuildContext context) => ClipRect(
        child: CustomPaint(
          size: Size(widget.width, widget.height),
          painter: CurvyArrowPainter(
            widget.color,
            widget.strokeWidth,
            widget.cubicBezier,
          ),
        ),
      );
}

/// The custom painter class for drawing the curvy arrow.
class CurvyArrowPainter extends CustomPainter {
  /// Constructs a CurvyArrowPainter object.
  ///
  /// [color] is the color of the curvy arrow.
  /// If not provided, the default color is used.
  CurvyArrowPainter(this.color, this.strokeWidth, this.cubicBezier);

  /// The color of the curvy arrow.
  final Color? color;

  /// The width of the stroke used to draw the arrow.
  final double? strokeWidth;

  /// The parameters for the cubic bezier curve used to draw the arrow.
  final CubicBezier? cubicBezier;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = strokeWidth ?? 5.0;

    final bezierParameters = cubicBezier ?? CubicBezier.defaultCurve();

    final path = Path()
      ..moveTo(size.width * 0.25, 50)
      ..relativeCubicTo(
        bezierParameters.x1,
        bezierParameters.y1,
        size.width * bezierParameters.x2,
        bezierParameters.y2,
        size.width * bezierParameters.x3,
        bezierParameters.y3,
      );

    if (color != null) {
      paint.color = color ?? Colors.black;
    }

    canvas.drawPath(ArrowPath.addTip(path), paint);
  }

  @override
  bool shouldRepaint(CurvyArrowPainter oldDelegate) =>
      color != oldDelegate.color ||
      strokeWidth != oldDelegate.strokeWidth ||
      cubicBezier != oldDelegate.cubicBezier;
}
