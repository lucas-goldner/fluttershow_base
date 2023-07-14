import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/enum/animations.dart';
import 'package:fluttershow_base/components/model/enum/directional_animation_direction.dart';

/// A class used to define which animation should be used,
///  with additional properties.
class AnimationArguments {
  /// Constructs an AnimationArguments object.
  ///
  /// [animation] specifies the type of animation.
  ///
  /// [delay] is the duration (in milliseconds) to delay the animation.
  ///
  /// [animationCurve] is an optional parameter that specifies the curve
  /// used for the animation. If not provided,
  /// the default curve is Curves.easeIn.
  ///
  /// [direction] is an optional parameter that specifies the direction of
  /// a directional animation. It is required when the animation is
  /// Animations.directionalAnimation.
  AnimationArguments(
    this.animation, {
    required this.delay,
    Curve? animationCurve,
    this.direction,
  })  : curve = animationCurve ?? Curves.easeIn,
        assert(
          animation != Animations.directionalAnimation || direction != null,
          'For Animations.directionalAnimation, a direction is required',
        );

  /// The type of animation.
  ///
  /// Example:
  /// ```
  /// Animations.fadeIn
  /// ```
  final Animations animation;

  /// The duration (in milliseconds) to delay the animation.
  final int delay;

  /// The curve used for the animation.
  ///
  /// Example:
  /// ```
  /// Curves.easeIn
  /// ```
  final Curve curve;

  /// The direction of a directional animation.
  ///
  /// Example:
  /// ```
  /// DirectionalAnimationDirection.left
  /// ```
  final DirectionalAnimationDirection? direction;
}
