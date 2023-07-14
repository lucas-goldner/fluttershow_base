import 'package:flutter/widgets.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';

/// A widget that represents the body section of a slide with flexible sizing.
class LayoutBody extends StatelessWidget {
  /// Constructs a LayoutBody widget.
  ///
  /// [child] is the widget to be displayed in the body section.
  ///
  /// [flexUnits] is the number of flex units assigned to the body section.
  /// If not provided, the default flex units for the body
  /// section is used.
  LayoutBody(
    this.child, {
    int? flexUnits,
    super.key,
  }) : layoutFlexUnits = flexUnits ?? LayoutFlexUnits.body.flexUnits;

  /// The widget to be displayed in the body section.
  final Widget child;

  /// The number of flex units assigned to the body section.
  final int layoutFlexUnits;

  @override
  Widget build(BuildContext context) => Expanded(
        flex: layoutFlexUnits,
        child: child,
      );
}
