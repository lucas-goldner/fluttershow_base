import 'package:flutter/cupertino.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';

class AnimatableWrapper extends StatelessWidget {
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

  final Widget child;
  final AnimationArguments? animationArguments;
  final int? animationIndex;
  final int? indexToShowAt;

  @override
  Widget build(BuildContext context) {
    if (animationIndex != null) {
      final currentIndex = animationIndex ?? 0;
      final indexToShow = indexToShowAt ?? 0;

      return Visibility(
        visible: currentIndex >= indexToShow,
        child: animationArguments != null
            ? animationArguments?.animation.animateWidget(
                  child,
                  animationArguments: animationArguments,
                ) ??
                const SizedBox.shrink()
            : child,
      );
    }

    return child;
  }
}
