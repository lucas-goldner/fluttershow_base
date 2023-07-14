import 'package:flutter/widgets.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';

/// A widget that represents the header section of a slide with flexible sizing.
class LayoutHeader extends StatelessWidget {
  /// Constructs a LayoutHeader widget.
  ///
  /// [child] is the widget to be displayed in the header section.
  ///
  /// [flexUnits] is the number of flex units assigned to the header section.
  /// If not provided, the default flex units for the header
  /// section is used.
  LayoutHeader(
    this.child, {
    int? flexUnits,
    super.key,
  }) : layoutFlexUnits = flexUnits ?? LayoutFlexUnits.header.flexUnits;

  /// The widget to be displayed in the header section.
  final Widget child;

  /// The number of flex units assigned to the header section.
  final int layoutFlexUnits;

  @override
  Widget build(BuildContext context) => Expanded(
        flex: layoutFlexUnits,
        child: child,
      );
}
