import 'package:flutter/widgets.dart';
import 'package:fluttershow_base/components/widgets/layout/layout_body.dart';
import 'package:fluttershow_base/components/widgets/layout/layout_header.dart';
import 'package:fluttershow_base/components/widgets/list/animatable_list_text.dart';
import 'package:fluttershow_base/components/widgets/list/list_text.dart';

class SlideTitleAndPhotoAlt extends StatelessWidget {
  const SlideTitleAndPhotoAlt({
    required this.widget,
    required this.text,
    required this.items,
    this.style,
    this.itemListtextAlign,
    this.itemListdotted,
    this.itemsPadding,
    this.animateItems,
    this.currentIndex,
    super.key,
  });

  final Widget widget;
  final String text;
  final List<String> items;
  final TextStyle? style;
  final TextAlign? itemListtextAlign;
  final bool? itemListdotted;
  final EdgeInsets? itemsPadding;
  final bool? animateItems;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Expanded(
            child: Column(
              children: [
                LayoutHeader(
                  Column(
                    children: [
                      const Spacer(),
                      Text(text),
                    ],
                  ),
                  flexUnits: 2,
                ),
                LayoutBody(
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 40),
                    child: animateItems ?? false
                        ? AnimatableListText(
                            texts: items,
                            currentIndex: currentIndex ?? 0,
                            style: style,
                            textAlign: itemListtextAlign,
                            dotted: itemListdotted,
                            padding: itemsPadding,
                          )
                        : ListText(
                            texts: items,
                            style: style,
                            textAlign: itemListtextAlign,
                            dotted: itemListdotted,
                            padding: itemsPadding,
                          ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: widget,
          )
        ],
      );
}
