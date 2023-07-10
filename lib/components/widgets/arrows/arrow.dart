import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  const Arrow(
    this.text, {
    super.key,
    this.color = Colors.black,
    this.size = const Size(24.0, 24.0),
  });

  final String text;
  final Color color;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
          child: Icon(
            CupertinoIcons.arrow_right,
            color: color,
            size: size.height,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            fontSize: size.height,
          ),
        ),
      ],
    );
  }
}
