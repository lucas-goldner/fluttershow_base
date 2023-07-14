import 'package:flutter/widgets.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';

/// A widget that represents the footer section of a slide with flexible sizing.
class LayoutFooter extends StatelessWidget {
  /// Constructs a LayoutFooter widget.
  ///
  /// [child] is the widget to be displayed in the footer section.
  ///
  /// [flexUnits] is the number of flex units assigned to the footer section.
  /// If not provided, the default flex units for the footer
  /// section is used.
  LayoutFooter(
    this.child, {
    int? flexUnits,
    super.key,
  }) : layoutFlexUnits = flexUnits ?? LayoutFlexUnits.footer.flexUnits;

  /// The widget to be displayed in the footer section.
  final Widget child;

  /// The number of flex units assigned to the footer section.
  final int layoutFlexUnits;

  @override
  Widget build(BuildContext context) => Expanded(
        flex: layoutFlexUnits,
        child: child,
      );
}
