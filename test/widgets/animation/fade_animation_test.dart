import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/animation/fade_animation.dart';

void main() {
  group('FadeAnimation', () {
    const delay = 500;
    final Widget child = Container();

    Widget makeTestableWidget() => MaterialApp(
          home: Scaffold(
            body: FadeAnimation(
              delay: delay,
              child: child,
            ),
          ),
        );

    testWidgets('test renders fade animation correctly', (tester) async {
      await tester.pumpWidget(
        makeTestableWidget(),
      );
      await tester.pumpAndSettle(const Duration(milliseconds: delay));

      final fadeAnimationFinder = find.byType(FadeAnimation);
      expect(fadeAnimationFinder, findsOneWidget);

      final fadeAnimationWidget =
          tester.widget<FadeAnimation>(fadeAnimationFinder);
      expect(fadeAnimationWidget.child, equals(child));
      expect(fadeAnimationWidget.delay, equals(delay));
    });
  });
}
