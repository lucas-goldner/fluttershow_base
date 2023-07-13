import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/enum/directional_animation_direction.dart';

class DirectionalAnimation extends StatefulWidget {
  const DirectionalAnimation({
    required this.child,
    required this.delay,
    required this.direction,
    Curve? curve,
    super.key,
  }) : _curve = curve ?? Curves.easeIn;
  final Widget child;
  final int delay;
  final Curve _curve;
  final DirectionalAnimationDirection direction;

  @override
  DirectionalAnimState createState() => DirectionalAnimState();
}

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
