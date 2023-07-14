import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

/// A widget that displays a list of texts
/// with optional animations and bullet points.
class ListText extends StatelessWidget {
  /// Constructs a ListText widget.
  ///
  /// [texts] is the list of texts to be displayed.
  ///
  /// [animationIndex] is an optional index at which the animation should start.
  /// If provided, texts at or after the animation index will be animated.
  ///
  /// [animationArguments] is the optional animation
  /// arguments for the text animations. Dictates which animation will be used.
  ///
  /// [style] is the optional text style to be applied to the texts.
  ///
  /// [textAlign] is the optional text alignment for the texts.
  ///
  /// [bullet] is the optional bullet style to be applied to the texts.
  ///
  /// [padding] is the optional padding to be applied to each text item.
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

  /// The list of texts to be displayed.
  final List<String> texts;

  /// The optional index at which the animation should start.
  final int? animationIndex;

  /// The optional animation arguments for the text animations.
  final AnimationArguments? animationArguments;

  /// The optional text style to be applied to the texts.
  final TextStyle? style;

  /// The optional text alignment for the texts.
  final TextAlign? textAlign;

  /// The optional bullet style to be applied to the texts.
  final ListBullets? bullet;

  /// The optional padding to be applied to each text item.
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
                      ? animationArguments!.animation.animateWidget(
                          Text(
                            key: Key('AnimatedListTextItem-$index'),
                            bullet != null
                                ? '${bullet!.uniCode} ${texts[index]}'
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
                                ? '${bullet!.uniCode} ${texts[index]}'
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
                  ? '${bullet!.uniCode} ${texts[index]}'
                  : texts[index],
              style: style,
              textAlign: textAlign,
            ),
          );
        },
      );
}
