import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/enum/directional_animation_direction.dart';

/// A widget that performs a directional animation on its child widget.
class DirectionalAnimation extends StatefulWidget {
  /// Constructs a DirectionalAnimation widget.
  ///
  /// [child] is the widget to be animated.
  ///
  /// [delay] is the delay (in milliseconds) before starting the animation.
  ///
  /// [direction] is the direction of the animation.
  ///
  /// [curve] is an optional parameter that specifies
  /// the curve used for the animation.
  /// If not provided, the default curve is Curves.easeIn.
  const DirectionalAnimation({
    required this.child,
    required this.delay,
    required this.direction,
    Curve? curve,
    super.key,
  }) : _curve = curve ?? Curves.easeIn;

  /// The widget to be animated.
  final Widget child;

  /// The delay (in milliseconds) before starting the animation.
  final int delay;

  /// The curve used for the animation.
  final Curve _curve;

  /// The direction of the animation.
  final DirectionalAnimationDirection direction;

  @override
  DirectionalAnimState createState() => DirectionalAnimState();
}

/// The state class for the DirectionalAnimation widget.
class DirectionalAnimState extends State<DirectionalAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animController;
  late Animation<Offset> _animOffset;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    final animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animController = animationController;
    final curve = CurvedAnimation(
      curve: widget._curve,
      parent: animationController,
    );

    _animOffset =
        Tween<Offset>(begin: widget.direction.offset, end: Offset.zero)
            .animate(curve);
    _timer = Timer(Duration(milliseconds: widget.delay), _animate);
  }

  /// Starts the animation.
  void _animate() {
    _animController.forward();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SlideTransition(
        position: _animOffset,
        child: widget.child,
      );
}
