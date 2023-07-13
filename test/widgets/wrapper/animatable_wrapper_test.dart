import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/model/enum/animations.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';

void main() {
  group('AnimatableWrapper', () {
    const Widget child = SizedBox();
    const animationIndex = 2;
    const indexToShowAt = 1;
    final animationArguments = AnimationArguments(
      Animations.fadeAnimation,
      delay: 500,
    );

    Widget makeTestableWidget(
      Widget child, {
      int? animationIndex,
      int? indexToShowAt,
      AnimationArguments? animationArguments,
    }) =>
        MaterialApp(
          home: Scaffold(
            body: AnimatableWrapper(
              child,
              animationIndex: animationIndex,
              indexToShowAt: indexToShowAt,
              animationArguments: animationArguments,
            ),
          ),
        );

    testWidgets('test returns child when animationIndex is null',
        (tester) async {
      await tester.pumpWidget(
        makeTestableWidget(
          child,
        ),
      );

      final animatableWrapperFinder = find.byType(AnimatableWrapper);

      expect(animatableWrapperFinder, findsOneWidget);
      expect(
        tester.widget<AnimatableWrapper>(animatableWrapperFinder).child,
        equals(child),
      );
    });

    testWidgets(
        'test -> animated child if animationIndex !null and > indexToShowAt',
        (tester) async {
      await tester.pumpWidget(
        makeTestableWidget(
          child,
          animationIndex: animationIndex,
          indexToShowAt: indexToShowAt,
          animationArguments: animationArguments,
        ),
      );

      final animatableWrapperFinder = find.byType(AnimatableWrapper);
      final visibilityFinder = find.byType(Visibility);
      final fadeAnimationFinder = find.byType(FadeAnimation);

      expect(animatableWrapperFinder, findsOneWidget);
      expect(visibilityFinder, findsOneWidget);
      expect(fadeAnimationFinder, findsOneWidget);

      final visibilityWidget = tester.widget<Visibility>(visibilityFinder);
      expect(visibilityWidget.visible, isTrue);

      final fadeAnimationWidget =
          tester.widget<FadeAnimation>(fadeAnimationFinder);
      expect(fadeAnimationWidget.delay, equals(animationArguments.delay));
      expect(fadeAnimationWidget.child, equals(child));
    });

    testWidgets(
        'test -> animated child if animationIndex !null and < indexToShowAt',
        (tester) async {
      await tester.pumpWidget(
        makeTestableWidget(
          child,
          animationIndex: 0,
          indexToShowAt: indexToShowAt,
          animationArguments: animationArguments,
        ),
      );

      final animatableWrapperFinder = find.byType(AnimatableWrapper);
      final visibilityFinder = find.byType(Visibility);
      final fadeAnimationFinder = find.byType(FadeAnimation);

      expect(animatableWrapperFinder, findsOneWidget);
      expect(visibilityFinder, findsOneWidget);
      expect(fadeAnimationFinder, findsNothing);

      final visibilityWidget = tester.widget<Visibility>(visibilityFinder);
      expect(visibilityWidget.visible, isFalse);
    });

    testWidgets('test returns child when animationArguments is null',
        (tester) async {
      await tester.pumpWidget(
        makeTestableWidget(
          child,
          animationIndex: animationIndex,
          indexToShowAt: indexToShowAt,
        ),
      );

      final animatableWrapperFinder = find.byType(AnimatableWrapper);
      final visibilityFinder = find.byType(Visibility);
      final fadeAnimationFinder = find.byType(FadeAnimation);

      expect(animatableWrapperFinder, findsOneWidget);
      expect(visibilityFinder, findsOneWidget);
      expect(fadeAnimationFinder, findsNothing);

      final visibilityWidget = tester.widget<Visibility>(visibilityFinder);
      expect(visibilityWidget.visible, isTrue);
    });
  });
}
