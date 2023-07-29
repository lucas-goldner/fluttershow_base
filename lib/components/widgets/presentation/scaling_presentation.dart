import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/presentation_page.dart';

/// A widget that builds a presentation, where it switches
/// between slides by scaling them in and out.
///
/// The duration of the switch-in animation is defined by [duration].
/// If [duration] is not provided, the default value is 500 milliseconds.
///
/// The duration of the switch-out animation is defined by [reverseDuration].
///
/// The animation curves for the switch-in and switch-out animations are
/// defined by [switchInCurve] and [switchOutCurve] respectively.
/// If not provided, the default value is linear for both.
///
/// This widget will be rebuilt with a new [pageIndex] whenever a new slide
/// needs to be displayed.
class ScalingPresentation extends StatelessWidget {
  /// Creates a [ScalingPresentation] widget.
  ///
  /// The [pageIndex], [presentationPages], and [pageController]
  /// arguments must not be null.
  /// Optionally, [duration], [reverseDuration], [switchInCurve],
  /// and [switchOutCurve] can be passed to customize the animations.
  const ScalingPresentation({
    required this.pageIndex,
    required this.presentationPages,
    required this.pageController,
    this.duration,
    this.reverseDuration,
    this.switchInCurve,
    this.switchOutCurve,
    super.key,
  });

  /// The list of slide widgets.
  final List<PresentationSlide> presentationPages;

  /// The controller for the PageView.
  final PageController pageController;

  /// The index of the current slide.
  final int pageIndex;

  /// The duration of the switch-in animation.
  final Duration? duration;

  /// The duration of the switch-out animation.
  final Duration? reverseDuration;

  /// The curve of the switch-in animation.
  final Curve? switchInCurve;

  /// The curve of the switch-out animation.
  final Curve? switchOutCurve;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          /// This PageView exists only because FlutterShow creates per default
          /// a PageController that needs to be set assigned somewhere to work.
          SizedBox.shrink(
            child: PageView(
              controller: pageController,
            ),
          ),
          AnimatedSwitcher(
            duration: duration ?? const Duration(milliseconds: 500),
            reverseDuration: reverseDuration,
            switchInCurve: switchInCurve ?? Curves.linear,
            switchOutCurve: switchOutCurve ?? Curves.linear,
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: child,
            ),
            child: presentationPages[pageIndex].slideWidget,
          ),
        ],
      );
}
