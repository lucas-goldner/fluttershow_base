import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';

void main() {
  Widget makeWidget() => const MaterialApp(
        home: Scaffold(
          body: Arrow(),
        ),
      );

  testWidgets('test arrow renders correctly', (tester) async {
    await tester.pumpWidget(makeWidget());
  });
}
