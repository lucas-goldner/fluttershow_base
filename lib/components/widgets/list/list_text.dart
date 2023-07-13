import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

class ListText extends StatelessWidget {
  const ListText({
    required this.texts,
    this.animationIndex,
    this.animationArguments,
    this.style,
    this.textAlign,
    this.bullet,
    this.padding,
    super.key,
  });

  final int? animationIndex;
  final AnimationArguments? animationArguments;
  final List<String> texts;
  final TextStyle? style;
  final TextAlign? textAlign;
  final ListBullets? bullet;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: texts.length,
        itemBuilder: (context, index) {
          if (animationIndex != null) {
            final currentIndex = animationIndex ?? 0;

            return Padding(
              padding: padding ?? EdgeInsets.zero,
              child: currentIndex >= index
                  ? animationArguments != null
                      ? animationArguments?.animation.animateWidget(
                          Text(
                            key: Key('AnimatedListTextItem-$index'),
                            bullet != null
                                ? '${bullet?.uniCode} ${texts[index]}'
                                : texts[index],
                            style: style,
                            textAlign: textAlign,
                          ),
                          animationArguments: animationArguments,
                        )
                      : FadeAnimation(
                          delay: 100,
                          child: Text(
                            key: Key('DefaultAnimatedListTextItem-$index'),
                            bullet != null
                                ? '${bullet?.uniCode} ${texts[index]}'
                                : texts[index],
                            style: style,
                            textAlign: textAlign,
                          ),
                        )
                  : const SizedBox.shrink(),
            );
          }

          return Padding(
            padding: padding ?? EdgeInsets.zero,
            child: Text(
              key: Key('ListTextItem-$index'),
              bullet != null
                  ? '${bullet?.uniCode} ${texts[index]}'
                  : texts[index],
              style: style,
              textAlign: textAlign,
            ),
          );
        },
      );
}
