import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';

void main() {
  Widget makeWidget({String? text}) => MaterialApp(
        home: Scaffold(
          body: Arrow(
            text: text,
          ),
        ),
      );

  testWidgets('test arrow renders correctly', (tester) async {
    await tester.pumpWidget(makeWidget());
  });

  testWidgets('test arrow renders with text', (tester) async {
    await tester.pumpWidget(makeWidget(text: 'Text'));
    final textFinder = find.text('Text');
    expect(textFinder, findsOneWidget);
  });
}
