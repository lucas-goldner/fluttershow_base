import 'package:flutter/animation.dart';

/// An enum representing different directions for directional animations.
enum DirectionalAnimationDirection {
  /// Used for animating the top direction.
  top(Offset(0, 1)),

  /// Used for animating the bottom direction.
  bottom(Offset(0, -1)),

  /// Used for animating the left direction.
  left(Offset(-1, 0)),

  /// Used for animating the right direction.
  right(Offset(1, 0));

  /// Constructs a DirectionalAnimationDirection object with
  /// the specified offset.
  ///
  /// [offset] is the offset associated with the direction.
  const DirectionalAnimationDirection(this.offset);

  /// The offset associated with the direction.
  final Offset offset;
}
