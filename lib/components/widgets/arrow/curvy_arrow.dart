import 'package:arrow_path/arrow_path.dart';
import 'package:flutter/material.dart';

class CurvyArrow extends StatefulWidget {
  const CurvyArrow(
    this.height,
    this.width, {
    this.color,
    super.key,
  });
  final double width;
  final double height;
  final Color? color;

  @override
  State<CurvyArrow> createState() => _CurvyArrowState();
}

class _CurvyArrowState extends State<CurvyArrow> {
  @override
  Widget build(BuildContext context) => ClipRect(
        child: CustomPaint(
          size: Size(widget.width, widget.height),
          painter: CurvyArrowPainter(widget.color),
        ),
      );
}

class CurvyArrowPainter extends CustomPainter {
  CurvyArrowPainter(this.color);
  final Color? color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 8.0;

    {
      final path = Path()
        ..moveTo(size.width * 0.25, 60)
        ..relativeCubicTo(0, 0, size.width * 0.25, 50, size.width * 0.5, 0);

      if (color != null) {
        paint.color = color ?? Colors.black;
      }

      canvas.drawPath(ArrowPath.addTip(path), paint);
    }
  }

  @override
  bool shouldRepaint(CurvyArrowPainter oldDelegate) =>
      color != oldDelegate.color;
}
