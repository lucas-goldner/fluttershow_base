import 'package:flutter/material.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class AnimatableListText extends StatelessWidget {
  const AnimatableListText({
    required this.texts,
    required this.animationIndex,
    this.style,
    this.textAlign,
    this.bullet,
    this.padding,
    super.key,
  });

  final int animationIndex;
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
          child: animationIndex >= index
              ? FadeAnimation(
                  delay: 100,
                  child: Text(
                    bullet != null
                        ? '${bullet?.uniCode} ${texts[index]}'
                        : texts[index],
                    style: style,
                    textAlign: textAlign,
                  ),
                )
              : const SizedBox.shrink(),
        ),
      );
}
