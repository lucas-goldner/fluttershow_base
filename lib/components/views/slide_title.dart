import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/widgets/layout/layout_footer.dart';
import 'package:fluttershow_base/components/widgets/layout/layout_header.dart';

class SlideTitle extends StatelessWidget {
  const SlideTitle({
    required this.titleText,
    super.key,
    this.subTitleText,
    this.footerText,
    this.titleColors,
    this.textColor,
  });

  final String titleText;
  final String? subTitleText;
  final String? footerText;
  final List<Color>? titleColors;
  final Color? textColor;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LayoutHeader(
            Column(
              children: [
                const Spacer(),
                Flexible(
                  child: Text(titleText),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    subTitleText ?? '',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
            flexUnits: 8,
          ),
          LayoutFooter(
            Column(
              children: [
                const Spacer(),
                Center(
                  child: Text(
                    footerText ?? '',
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
            flexUnits: 2,
          ),
        ],
      );
}
