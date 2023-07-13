import 'dart:async';
import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({
    required this.child,
    required this.delay,
    super.key,
  });
  final Widget child;
  final int delay;

  @override
  FadeAnimState createState() => FadeAnimState();
}

class FadeAnimState extends State<FadeAnimation> with TickerProviderStateMixin {
  late AnimationController _animController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    final animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animController = animationController;
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
  Widget build(BuildContext context) => FadeTransition(
        opacity: _animController,
        child: widget.child,
      );
}
