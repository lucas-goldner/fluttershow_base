import 'package:flutter/material.dart';

class ListText extends StatelessWidget {
  const ListText({
    required this.texts,
    this.textAlign,
    this.dotted,
    this.padding,
    this.style,
    super.key,
  });

  final List<String> texts;
  final TextStyle? style;
  final TextAlign? textAlign;
  final bool? dotted;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: texts.length,
        itemBuilder: (context, index) => Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Text(
            dotted ?? false ? '\u2022 ${texts[index]}' : texts[index],
            style: style,
            textAlign: textAlign,
          ),
        ),
      );
}
