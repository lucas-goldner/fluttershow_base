import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

enum Animations {
  fadeAnimation,
  directionalAnimation;

  Widget animateWidget(
    Widget child, {
    AnimationArguments? animationArguments,
  }) {
    if (animationArguments != null) {
      switch (this) {
        case Animations.fadeAnimation:
          return FadeAnimation(
            delay: animationArguments.delay,
            curve: animationArguments.curve,
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
