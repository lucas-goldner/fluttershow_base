import 'package:dart_code_viewer_x/dart_code_viewer_x.dart';
import 'package:flutter/material.dart';
import 'package:fluttershow_base/components/helper/format_code.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';

/// A widget that displays formatted code
/// with customizable styles and decorations.
class CodeDisplay extends StatelessWidget {
  /// Creates a [CodeDisplay] widget.
  ///
  /// The [code] parameter is the code to be displayed.
  ///
  /// The [codeColorTheme] parameter specifies
  /// the color theme for syntax highlighting.
  ///
  /// The [width] and [height] parameters can be used
  /// to set the dimensions of the widget.
  ///
  /// The [showCopyButton] parameter is used
  /// for deciding if the copy button should be shown.
  ///
  /// The [boxDecoration] parameter allows customizing
  /// the box decoration of the code display.
  ///
  /// The [commentTextStyle], [baseTextStyle], [classTextStyle],
  /// [keywordTextStyle], [stringTextStyle], and [punctuationTextStyle]
  /// parameters can be used to customize
  /// the styles of different parts of the code.
  ///
  /// The [padding] parameter specifies the padding of the code container.
  CodeDisplay(
    this.code, {
    this.codeColorTheme,
    this.width,
    this.height,
    this.showCopyButton,
    this.copyButtonReplacement,
    this.boxDecoration,
    this.commentTextStyle,
    this.baseTextStyle,
    this.classTextStyle,
    this.keywordTextStyle,
    this.stringTextStyle,
    this.punctuationTextStyle,
    this.padding,
    super.key,
  }) : _formatedCode = formatCode(code);

  /// The code to be displayed.
  final String code;

  /// The formatted code.
  final String _formatedCode;

  /// Determines if copy for code button should be shown.
  final bool? showCopyButton;

  /// If `showCopyButton` is set, by default an elevated button will be shown.
  /// To provide a custom copy copy button, this property can be used.
  final Widget? copyButtonReplacement;

  /// The height of the code display.
  final double? height;

  /// The width of the code display.
  final double? width;

  /// The color theme for syntax highlighting.
  final CodeDisplayColorThemes? codeColorTheme;

  /// The box decoration of the code display.
  final BoxDecoration? boxDecoration;

  /// The text style for comments.
  final TextStyle? commentTextStyle;

  /// The base text style.
  final TextStyle? baseTextStyle;

  /// The text style for classes.
  final TextStyle? classTextStyle;

  /// The text style for keywords.
  final TextStyle? keywordTextStyle;

  /// The text style for strings.
  final TextStyle? stringTextStyle;

  /// The text style for punctuation.
  final TextStyle? punctuationTextStyle;

  /// The padding of the container.
  final EdgeInsets? padding;

  /// Returns a [TextStyle] with the specified [color]
  /// if the [textStyle] is not null,
  /// otherwise returns a [TextStyle] with the specified [color],
  /// or an empty [TextStyle].
  TextStyle getTextStyle(TextStyle? textStyle, Color? color) {
    if (textStyle != null && textStyle.color != null) {
      return textStyle;
    }

    return (textStyle ?? const TextStyle()).copyWith(color: color);
  }

  /// Returns a [BoxDecoration] with the specified [color]
  /// if the [boxDecoration] is not null,
  /// otherwise returns a [BoxDecoration] with the specified [color],
  /// or an empty [BoxDecoration].
  BoxDecoration getBoxDecoration(BoxDecoration? boxDecoration, Color? color) {
    if (boxDecoration != null) {
      return boxDecoration.color != null
          ? boxDecoration
          : boxDecoration.copyWith(color: color);
    }

    if (color != null) {
      return BoxDecoration(color: color);
    }

    return const BoxDecoration();
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          key: const Key('CodeDisplayContainer'),
          padding: padding,
          decoration: getBoxDecoration(
            boxDecoration,
            codeColorTheme?.backgroundColor,
          ),
          child: DartCodeViewer(
            _formatedCode,
            width: width,
            height: height,
            showCopyButton: showCopyButton ?? false,
            displayCopyNotification: false,
            copyButtonReplacement: copyButtonReplacement,
            backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
            commentStyle:
                getTextStyle(commentTextStyle, codeColorTheme?.commentColor),
            baseStyle: getTextStyle(baseTextStyle, codeColorTheme?.baseColor),
            classStyle:
                getTextStyle(classTextStyle, codeColorTheme?.classColor),
            keywordStyle:
                getTextStyle(keywordTextStyle, codeColorTheme?.keywordColor),
            stringStyle:
                getTextStyle(stringTextStyle, codeColorTheme?.stringColor),
            punctuationStyle: getTextStyle(
              punctuationTextStyle,
              codeColorTheme?.punctuationColor,
            ),
          ),
        ),
      );
}
