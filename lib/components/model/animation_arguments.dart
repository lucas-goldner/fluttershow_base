import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/enum/animations.dart';
import 'package:fluttershow_base/components/model/enum/directional_animation_direction.dart';

class AnimationArguments {
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

  final Animations animation;
  final int delay;
  final Curve curve;
  final DirectionalAnimationDirection? direction;
}
