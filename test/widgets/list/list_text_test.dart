import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/fluttershow_base_components.dart';
import 'package:fluttershow_base/fluttershow_base.dart';

void main() {
  Widget makeWidget({
    required List<String> texts,
    int? animationIndex,
    AnimationArguments? animationArguments,
    ListBullets? bullet,
  }) =>
      MaterialApp(
        home: Scaffold(
          body: ListText(
            texts: texts,
            key: const Key('AnimatedList'),
            animationIndex: animationIndex,
            animationArguments: animationArguments,
            bullet: bullet,
          ),
        ),
      );

  testWidgets('Test renders list text correctly', (tester) async {
    final texts = ['Text1', 'Text2', 'Text3'];

    await tester.pumpWidget(
      makeWidget(texts: texts),
    );

    for (final text in texts) {
      final textFinder = find.text(text);
      expect(textFinder, findsOneWidget);
      final keyFinder = find.byKey(Key('ListTextItem-${texts.indexOf(text)}'));
      expect(keyFinder, findsOneWidget);
    }
  });

  testWidgets('Test renders list text with bullets', (tester) async {
    final texts = ['Text1', 'Text2', 'Text3'];

    await tester.pumpWidget(
      makeWidget(texts: texts, bullet: ListBullets.square),
    );

    for (final text in texts) {
      final textFinder = find.text('${ListBullets.square.uniCode} $text');
      expect(textFinder, findsOneWidget);
    }
  });

  testWidgets('Test animated list text', (tester) async {
    final texts = ['Text1', 'Text2', 'Text3'];
    var animationIndex = 0;

    await tester.pumpWidget(
      makeWidget(
        texts: texts,
        animationIndex: animationIndex,
      ),
    );

    for (final text in texts) {
      final textFinder = find.text(text);
      expect(textFinder, findsOneWidget);
      final keyFinder =
          find.byKey(Key('DefaultAnimatedListTextItem-${texts.indexOf(text)}'));
      expect(keyFinder, findsOneWidget);
      animationIndex++;
      await tester.pumpWidget(
        makeWidget(
          texts: texts,
          animationIndex: animationIndex,
        ),
      );
    }
  });

  testWidgets('Test animated list text with bullets', (tester) async {
    final texts = ['Text1', 'Text2', 'Text3'];
    var animationIndex = 0;

    await tester.pumpWidget(
      makeWidget(
        texts: texts,
        animationIndex: animationIndex,
        bullet: ListBullets.square,
      ),
    );

    for (final text in texts) {
      final textFinder = find.text('${ListBullets.square.uniCode} $text');
      expect(textFinder, findsOneWidget);
      final keyFinder =
          find.byKey(Key('DefaultAnimatedListTextItem-${texts.indexOf(text)}'));
      expect(keyFinder, findsOneWidget);
      animationIndex++;
      await tester.pumpWidget(
        makeWidget(
          texts: texts,
          animationIndex: animationIndex,
          bullet: ListBullets.square,
        ),
      );
    }
  });

  testWidgets('Test animated list text with animation arguments',
      (tester) async {
    final texts = ['Text1', 'Text2', 'Text3'];
    var animationIndex = 0;

    final animArgs = AnimationArguments(
      Animations.directionalAnimation,
      delay: 1,
      direction: DirectionalAnimationDirection.top,
    );

    await tester.pumpWidget(
      makeWidget(
        texts: texts,
        animationIndex: animationIndex,
        animationArguments: animArgs,
      ),
    );

    for (final text in texts) {
      final textFinder = find.text(text);
      expect(textFinder, findsOneWidget);
      final keyFinder =
          find.byKey(Key('AnimatedListTextItem-${texts.indexOf(text)}'));
      expect(keyFinder, findsOneWidget);
      expect(
        find.byType(DirectionalAnimation),
        findsNWidgets(texts.indexOf(text) + 1),
      );
      animationIndex++;
      await tester.pumpWidget(
        makeWidget(
          texts: texts,
          animationIndex: animationIndex,
          animationArguments: animArgs,
        ),
      );
    }
  });

  testWidgets('Test animated list text with animation arguments and bullets',
      (tester) async {
    final texts = ['Text1', 'Text2', 'Text3'];
    var animationIndex = 0;

    final animArgs = AnimationArguments(
      Animations.directionalAnimation,
      delay: 1,
      direction: DirectionalAnimationDirection.top,
    );

    await tester.pumpWidget(
      makeWidget(
        texts: texts,
        animationIndex: animationIndex,
        bullet: ListBullets.square,
        animationArguments: animArgs,
      ),
    );

    for (final text in texts) {
      final textFinder = find.text('${ListBullets.square.uniCode} $text');
      expect(textFinder, findsOneWidget);
      final keyFinder =
          find.byKey(Key('AnimatedListTextItem-${texts.indexOf(text)}'));
      expect(keyFinder, findsOneWidget);
      expect(
        find.byType(DirectionalAnimation),
        findsNWidgets(texts.indexOf(text) + 1),
      );
      animationIndex++;
      await tester.pumpWidget(
        makeWidget(
          texts: texts,
          animationIndex: animationIndex,
          bullet: ListBullets.square,
          animationArguments: animArgs,
        ),
      );
    }
  });
}
