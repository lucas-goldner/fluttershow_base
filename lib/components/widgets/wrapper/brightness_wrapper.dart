import 'package:flutter/material.dart';

/// The `BrightnessWrapper` is a versatile widget engineered to dynamically
/// present child widgets based on the prevailing theme brightness.
///
/// This widget proves exceptionally useful in scenarios where certain
/// elements, such as images, might not blend with the
/// currently applied theme.
///
/// For instance, if an image clashes with the dark theme,
/// you can create a 'dark mode' variant of the image. You can then use
/// this alternative into the `BrightnessWrapper`, ensuring
/// a better experience for the audience.
class BrightnessWrapper extends StatelessWidget {
  /// Creates a new instance of `BrightnessWrapper`.
  /// The [lightThemeChild], and [darkThemeChild]
  /// arguments must not be null.
  const BrightnessWrapper({
    required this.lightThemeChild,
    required this.darkThemeChild,
    super.key,
  });

  /// Specifies the widget to be displayed when the theme is light.
  final Widget lightThemeChild;

  /// Specifies the widget to be displayed when the theme is dark.
  final Widget darkThemeChild;

  @override
  Widget build(BuildContext context) => switch (Theme.of(context).brightness) {
        Brightness.dark => darkThemeChild,
        Brightness.light => lightThemeChild,
      };
}
