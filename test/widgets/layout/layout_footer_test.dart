import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';

void main() {
  Widget makeWidget({int? flexUnits}) => MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              LayoutFooter(
                const SizedBox(
                  key: Key('FooterItemKey'),
                ),
                flexUnits: flexUnits ?? LayoutFlexUnits.footer.flexUnits,
              ),
            ],
          ),
        ),
      );

  testWidgets('test render layout footer', (tester) async {
    await tester.pumpWidget(makeWidget());
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutFooter), findsOneWidget);
    expect(find.byKey(const Key('FooterItemKey')), findsOneWidget);
  });

  testWidgets('test render layout footer with default flexunits',
      (tester) async {
    await tester.pumpWidget(makeWidget());
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutFooter), findsOneWidget);
    expect(find.byKey(const Key('FooterItemKey')), findsOneWidget);

    final layoutFooter =
        tester.firstWidget(find.byType(LayoutFooter)) as LayoutFooter;
    expect(layoutFooter.layoutFlexUnits, LayoutFlexUnits.footer.flexUnits);
  });

  testWidgets('test render layout footer with specific flexunits',
      (tester) async {
    await tester.pumpWidget(makeWidget(flexUnits: 6));
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutFooter), findsOneWidget);
    expect(find.byKey(const Key('FooterItemKey')), findsOneWidget);

    final layoutFooter =
        tester.firstWidget(find.byType(LayoutFooter)) as LayoutFooter;
    expect(layoutFooter.layoutFlexUnits, 6);
  });
}
