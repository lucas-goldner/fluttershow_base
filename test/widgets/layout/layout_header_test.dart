import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';

void main() {
  Widget makeWidget({int? flexUnits}) => MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              LayoutHeader(
                const SizedBox(
                  key: Key('HeaderItemKey'),
                ),
                flexUnits: flexUnits ?? LayoutFlexUnits.header.flexUnits,
              ),
            ],
          ),
        ),
      );

  testWidgets('test render layout header', (tester) async {
    await tester.pumpWidget(makeWidget());
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutHeader), findsOneWidget);
    expect(find.byKey(const Key('HeaderItemKey')), findsOneWidget);
  });

  testWidgets('test render layout fheaderooter with default flexunits',
      (tester) async {
    await tester.pumpWidget(makeWidget());
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutHeader), findsOneWidget);
    expect(find.byKey(const Key('HeaderItemKey')), findsOneWidget);

    final layoutFooter =
        tester.firstWidget(find.byType(LayoutHeader)) as LayoutHeader;
    expect(layoutFooter.layoutFlexUnits, LayoutFlexUnits.header.flexUnits);
  });

  testWidgets('test render layout header with specific flexunits',
      (tester) async {
    await tester.pumpWidget(makeWidget(flexUnits: 6));
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutHeader), findsOneWidget);
    expect(find.byKey(const Key('HeaderItemKey')), findsOneWidget);

    final layoutFooter =
        tester.firstWidget(find.byType(LayoutHeader)) as LayoutHeader;
    expect(layoutFooter.layoutFlexUnits, 6);
  });
}
