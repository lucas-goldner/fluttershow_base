import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/transitions/fade_animation.dart';

class AnimatableListText extends StatelessWidget {
  const AnimatableListText({
    required this.texts,
    required this.currentIndex,
    this.style,
    this.textAlign,
    this.dotted,
    this.padding,
    super.key,
  });

  final int currentIndex;
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
          child: currentIndex >= index
              ? FadeAnimation(
                  Text(
                    dotted ?? false ? '\u2022 ${texts[index]}' : texts[index],
                    style: style,
                    textAlign: textAlign,
                  ),
                  100,
                )
              : const SizedBox.shrink(),
        ),
      );
}
