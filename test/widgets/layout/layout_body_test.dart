import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';

void main() {
  Widget makeWidget({int? flexUnits}) => MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              LayoutBody(
                const SizedBox(
                  key: Key('BodyItemKey'),
                ),
                flexUnits: flexUnits,
              ),
            ],
          ),
        ),
      );

  testWidgets('test render layout body', (tester) async {
    await tester.pumpWidget(makeWidget());
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutBody), findsOneWidget);
    expect(find.byKey(const Key('BodyItemKey')), findsOneWidget);
  });

  testWidgets('test render layout body with default flexunits', (tester) async {
    await tester.pumpWidget(makeWidget());
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutBody), findsOneWidget);
    expect(find.byKey(const Key('BodyItemKey')), findsOneWidget);

    final layoutBody =
        tester.firstWidget(find.byType(LayoutBody)) as LayoutBody;
    expect(layoutBody.layoutFlexUnits, LayoutFlexUnits.body.flexUnits);
  });

  testWidgets('test render layout body with specific flexunits',
      (tester) async {
    await tester.pumpWidget(makeWidget(flexUnits: 6));
    await tester.pump(const Duration(seconds: 1));
    expect(find.byType(LayoutBody), findsOneWidget);
    expect(find.byKey(const Key('BodyItemKey')), findsOneWidget);

    final layoutBody =
        tester.firstWidget(find.byType(LayoutBody)) as LayoutBody;
    expect(layoutBody.layoutFlexUnits, 6);
  });
}
