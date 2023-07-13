import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

enum Animations {
  fadeAnimation,
  directionalAnimation;

  Widget animateWidget(
    Widget child, {
    required AnimationArguments animationArguments,
  }) {
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
          direction:
              animationArguments.direction ?? PageDirectionalAnimations.top,
          curve: animationArguments.curve,
          child: child,
        );
    }
  }
}
