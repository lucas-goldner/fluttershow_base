import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/animation/directional_animation.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

void main() {
  const delay = 500;
  const direction = DirectionalAnimationDirection.top;
  const Curve curve = Curves.easeIn;
  final Widget child = Container();

  Widget makeTestableWidget() => MaterialApp(
        home: Scaffold(
          body: DirectionalAnimation(
            delay: delay,
            direction: direction,
            curve: curve,
            child: child,
          ),
        ),
      );

  testWidgets('test renders directional animation test', (tester) async {
    await tester.pumpWidget(
      makeTestableWidget(),
    );
    await tester.pumpAndSettle(const Duration(milliseconds: delay));

    final directionalAnimationFinder = find.byType(DirectionalAnimation);
    expect(directionalAnimationFinder, findsOneWidget);

    final directionalAnimationWidget =
        tester.widget<DirectionalAnimation>(directionalAnimationFinder);
    expect(directionalAnimationWidget.child, equals(child));
    expect(directionalAnimationWidget.delay, equals(delay));
    expect(directionalAnimationWidget.direction, equals(direction));
  });
}
