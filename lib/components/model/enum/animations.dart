import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

enum Animations {
  fadeAnimation,
  directionalAnimation;

  Widget animateWidget(
    Widget child, {
    required int delay,
    PageDirectionalAnimations? direction,
  }) {
    switch (this) {
      case Animations.fadeAnimation:
        return FadeAnimation(delay: delay, child: child);
      case Animations.directionalAnimation:
        return DirectionalAnimation(
          delay: delay,
          direction: direction ?? PageDirectionalAnimations.top,
          child: child,
        );
    }
  }
}
