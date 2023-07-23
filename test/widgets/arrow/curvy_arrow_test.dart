import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/cubic_bezier.dart';
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

  group('Test comparisons', () {
    test('test cubicBezier equality and hashCode test', () {
      const bezier1 =
          CubicBezier(x1: 0, y1: 0, x2: 0.25, y2: 50, x3: 0.5, y3: 0);
      const bezier2 =
          CubicBezier(x1: 0, y1: 0, x2: 0.25, y2: 50, x3: 0.5, y3: 0);
      const bezier3 =
          CubicBezier(x1: 0, y1: 0, x2: 0.25, y2: 51, x3: 0.5, y3: 0);
      const bezier4 = CubicBezier(
        x1: 0,
        y1: 0,
        x2: 0.25,
        y2: 50,
        x3: 0.6,
        y3: 0,
      );
      const bezier5 = CubicBezier(
        x1: 0,
        y1: 0,
        x2: 0.25,
        y2: 50,
        x3: 0.5,
        y3: 1,
      );

      expect(bezier1, equals(bezier2));
      expect(bezier1.hashCode, equals(bezier2.hashCode));

      expect(bezier1, isNot(equals(bezier3)));
      expect(bezier1.hashCode, isNot(equals(bezier3.hashCode)));

      expect(bezier1, isNot(equals(bezier4)));
      expect(bezier1.hashCode, isNot(equals(bezier4.hashCode)));

      expect(bezier1, isNot(equals(bezier5)));
      expect(bezier1.hashCode, isNot(equals(bezier5.hashCode)));
    });
  });

  group('Test shouldRepaint', () {
    test(
      'Test curvy arrow painter should not redraw if nothing does not change',
      () {
        expect(
          CurvyArrowPainter(null, null, null)
              .shouldRepaint(CurvyArrowPainter(null, null, null)),
          false,
        );
      },
    );

    test(
      'Test curvy arrow painter should redraw if color changes',
      () {
        expect(
          CurvyArrowPainter(Colors.amber, null, null)
              .shouldRepaint(CurvyArrowPainter(Colors.red, null, null)),
          true,
        );
      },
    );

    test(
      'Test curvy arrow painter should redraw if strokewidth changes',
      () {
        expect(
          CurvyArrowPainter(null, 8, null)
              .shouldRepaint(CurvyArrowPainter(null, 5, null)),
          true,
        );
      },
    );

    test(
      'Test curvy arrow painter should redraw if cubic bezier changes',
      () {
        expect(
          CurvyArrowPainter(null, null, CubicBezier.defaultCurve())
              .shouldRepaint(
            CurvyArrowPainter(
              null,
              null,
              const CubicBezier(x1: 1, y1: 2, x2: 3, y2: 4, x3: 5, y3: 6),
            ),
          ),
          true,
        );
      },
    );
  });
}
