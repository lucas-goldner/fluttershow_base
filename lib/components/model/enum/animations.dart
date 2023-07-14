import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// An enum representing different types of animations.
enum Animations {
  /// Enum value used for the fade animation.
  fadeAnimation,

  /// Enum value used for the directional animation.
  directionalAnimation;

  /// Animates the specified [child] widget based
  /// on the animation type and arguments.
  ///
  /// [child] is the widget to be animated.
  ///
  /// [animationArguments] the parameter of type [AnimationArguments]
  /// that specifies the animation details such as delay, curve, and direction.
  ///
  /// Returns the animated version of the child widget.
  ///
  /// Example usage:
  /// ```
  /// Animations.fadeAnimation.animateWidget(
  ///   MyWidget(),
  ///   animationArguments: AnimationArguments(
  ///     Animations.fadeAnimation,
  ///     delay: 500,
  ///     curve: Curves.easeInOut,
  ///   ),
  /// );
  /// ```
  Widget animateWidget(
    Widget child, {
    AnimationArguments? animationArguments,
  }) {
    if (animationArguments != null) {
      switch (this) {
        case Animations.fadeAnimation:
          return FadeAnimation(
            delay: animationArguments.delay,
            child: child,
          );
        case Animations.directionalAnimation:
          return DirectionalAnimation(
            delay: animationArguments.delay,
            direction: animationArguments.direction ??
                DirectionalAnimationDirection.top,
            curve: animationArguments.curve,
            child: child,
          );
      }
    }

    return child;
  }
}
