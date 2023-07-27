import 'package:flutter/material.dart';

/// A helper class that encapsulates the parameters of a cubic bezier curve.
///
/// A cubic bezier curve is defined by three points. The curve starts at the
/// current point, ends at (x3, y3), and bends according to the points
/// (x1, y1) and (x2, y2).
@immutable
class CubicBezier {
  /// Creates a [CubicBezier] object with given parameters.
  ///
  /// A cubic Bezier curve is defined by three points: it starts at the current
  /// point, the curve is influenced by the first ([x1], [y1]) and the second
  /// ([x2], [y2]) control points, and it ends at ([x3], [y3]).
  const CubicBezier({
    required this.x1,
    required this.y1,
    required this.x2,
    required this.y2,
    required this.x3,
    required this.y3,
  });

  /// Creates a default [CubicBezier] object with predefined parameters.
  ///
  /// This factory constructor provides a convenient way to create a
  /// [CubicBezier] object with a preset cubic Bezier curve.
  factory CubicBezier.defaultCurve() =>
      const CubicBezier(x1: 0, y1: 0, x2: 0.25, y2: 50, x3: 0.5, y3: 0);

  /// The x-coordinate of the first control point.
  final double x1;

  /// The y-coordinate of the first control point.
  final double y1;

  /// The x-coordinate of the second control point.
  final double x2;

  /// The y-coordinate of the second control point.
  final double y2;

  /// The x-coordinate of the end point.
  final double x3;

  /// The y-coordinate of the end point.
  final double y3;

  /// Used for comparing if object is equal to [CubicBezier]
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CubicBezier &&
        x1 == other.x1 &&
        y1 == other.y1 &&
        x2 == other.x2 &&
        y2 == other.y2 &&
        x3 == other.x3 &&
        y3 == other.y3;
  }

  /// Used for comparing hashCodes
  @override
  int get hashCode =>
      x1.hashCode ^
      y1.hashCode ^
      x2.hashCode ^
      y2.hashCode ^
      x3.hashCode ^
      y3.hashCode;
}
