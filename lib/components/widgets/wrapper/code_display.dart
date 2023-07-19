import 'package:dart_code_viewer2/dart_code_viewer2.dart';
import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/helper/format_code.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';

class CodeDisplay extends StatelessWidget {
  CodeDisplay(
    this.code, {
    this.codeColorTheme,
    this.width,
    this.height,
    this.boxDecoration,
    this.commentTextStyle,
    this.baseTextStyle,
    this.classTextStyle,
    this.keywordTextStyle,
    this.stringTextStyle,
    this.punctuationTextStyle,
    this.padding,
    super.key,
  }) : formatedCode = formatCode(code);

  final String code;
  final String formatedCode;
  final double? height;
  final double? width;
  final CodeDisplayColorThemes? codeColorTheme;
  final BoxDecoration? boxDecoration;
  final TextStyle? commentTextStyle;
  final TextStyle? baseTextStyle;
  final TextStyle? classTextStyle;
  final TextStyle? keywordTextStyle;
  final TextStyle? stringTextStyle;
  final TextStyle? punctuationTextStyle;
  final EdgeInsets? padding;

  TextStyle getTextStyle(TextStyle? textStyle, Color? color) {
    if (textStyle != null && color != null) {
      if (textStyle.color != null) {
        return textStyle;
      }

      return textStyle.copyWith(color: color);
    }

    if (textStyle != null) {
      return textStyle;
    }

    if (color != null) {
      return TextStyle(color: color);
    }

    return const TextStyle();
  }

  BoxDecoration getBoxDecoration(BoxDecoration? boxDecoration, Color? color) {
    if (boxDecoration != null && color != null) {
      if (boxDecoration.color != null) {
        return boxDecoration;
      }

      return boxDecoration.copyWith(color: color);
    }

    if (boxDecoration != null) {
      return boxDecoration;
    }

    if (color != null) {
      return BoxDecoration(color: color);
    }

    return const BoxDecoration();
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: padding,
        decoration: getBoxDecoration(
          boxDecoration,
          codeColorTheme?.backgroundColor,
        ),
        child: DartCodeViewer(
          formatedCode,
          width: width,
          height: height,
          showCopyButton: false,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          commentStyle:
              getTextStyle(commentTextStyle, codeColorTheme?.commentColor),
          baseStyle: getTextStyle(baseTextStyle, codeColorTheme?.baseColor),
          classStyle: getTextStyle(classTextStyle, codeColorTheme?.classColor),
          keywordStyle:
              getTextStyle(keywordTextStyle, codeColorTheme?.keywordColor),
          stringStyle:
              getTextStyle(stringTextStyle, codeColorTheme?.stringColor),
          punctuationStyle: getTextStyle(
            punctuationTextStyle,
            codeColorTheme?.punctuationColor,
          ),
        ),
      );
}
