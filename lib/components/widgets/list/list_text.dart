import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/model/enum/list_bullets.dart';

class ListText extends StatelessWidget {
  const ListText({
    required this.texts,
    this.textAlign,
    this.bullet,
    this.padding,
    this.style,
    super.key,
  });

  final List<String> texts;
  final TextStyle? style;
  final TextAlign? textAlign;
  final ListBullets? bullet;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: texts.length,
        itemBuilder: (context, index) => Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Text(
            bullet != null
                ? '${bullet?.uniCode} ${texts[index]}'
                : texts[index],
            style: style,
            textAlign: textAlign,
          ),
        ),
      );
}
