import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';

/// A widget that applies animations to its child
/// based on the provided index values.
class AnimatableWrapper extends StatelessWidget {
  /// Constructs an AnimatableWrapper widget.
  ///
  /// [child] is the widget to be wrapped and potentially animated.
  ///
  /// [animationIndex] is the optional index at
  /// which the animation should start.
  ///
  /// [indexToShowAt] is the optional index at which the child
  /// should become visible. This is required if [animationIndex] is set.
  ///
  /// [animationArguments] is the optional animation arguments for the child animation.
  const AnimatableWrapper(
    this.child, {
    this.animationIndex,
    this.indexToShowAt,
    this.animationArguments,
    super.key,
  }) : assert(
          !(animationIndex != null && indexToShowAt == null),
          'If animationIndex is set, indexToShowAt also needs to be specified',
        );

  /// The widget to be wrapped and potentially animated.
  final Widget child;

  /// The optional animation arguments for the child animation.
  final AnimationArguments? animationArguments;

  /// The optional index at which the animation should start.
  final int? animationIndex;

  /// The optional index at which the child should become visible.
  /// This is required if [animationIndex] is set.
  final int? indexToShowAt;

  @override
  Widget build(BuildContext context) {
    if (animationIndex != null) {
      final currentIndex = animationIndex ?? 0;
      final indexToShow = indexToShowAt ?? 0;

      return Visibility(
        visible: currentIndex >= indexToShow,
        child: animationArguments != null
            ? animationArguments!.animation.animateWidget(
                child,
                animationArguments: animationArguments,
              )
            : child,
      );
    }

    return child;
  }
}
