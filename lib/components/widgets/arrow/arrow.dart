import 'package:flutter/cupertino.dart';

class Arrow extends StatelessWidget {
  const Arrow({
    this.text,
    this.color,
    this.size = const Size(24, 24),
    super.key,
  });

  final String? text;
  final Color? color;
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
        Visibility(
          visible: text != null,
          child: Text(
            text ?? '',
            style: TextStyle(
              fontSize: size.height,
            ),
          ),
        )
      ],
    );
  }
}
