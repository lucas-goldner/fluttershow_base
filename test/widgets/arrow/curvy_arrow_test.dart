import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';

void main() {
  Widget makeWidget() => const MaterialApp(
        home: Scaffold(
          body: CurvyArrow(
            100,
            100,
            color: Colors.red,
          ),
        ),
      );

  testWidgets(
    'Test curvy arrow renders correctly',
    (tester) async {
      await tester.pumpWidget(makeWidget());
    },
  );

  test(
    'Test curvy arrow painter should not redraw if color does not change',
    () {
      expect(
        CurvyArrowPainter(null).shouldRepaint(CurvyArrowPainter(null)),
        false,
      );
    },
  );

  test(
    'Test curvy arrow painter should not redraw if color changes',
    () {
      expect(
        CurvyArrowPainter(Colors.amber)
            .shouldRepaint(CurvyArrowPainter(Colors.red)),
        true,
      );
    },
  );
}
