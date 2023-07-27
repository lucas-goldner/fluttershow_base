import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/wrapper/brightness_wrapper.dart';

void main() {
  group('BightnessWrapper', () {
    const Widget lightmodeChild = SizedBox(
      key: Key('LightMode'),
    );
    const Widget darkmodeChild = SizedBox(
      key: Key('DarkMode'),
    );
    final lightModeFinder = find.byKey(const Key('LightMode'));
    final darkModeFinder = find.byKey(const Key('DarkMode'));

    Widget makeTestableMaterialWidget(
      Brightness brightness,
    ) =>
        MaterialApp(
          theme: ThemeData(brightness: brightness),
          home: const Scaffold(
            body: BrightnessWrapper(
              lightThemeChild: lightmodeChild,
              darkThemeChild: darkmodeChild,
            ),
          ),
        );

    Widget makeTestableCupertinoWidget(
      Brightness brightness,
    ) =>
        CupertinoApp(
          theme: CupertinoThemeData(brightness: brightness),
          home: const CupertinoPageScaffold(
            child: BrightnessWrapper(
              lightThemeChild: lightmodeChild,
              darkThemeChild: darkmodeChild,
            ),
          ),
        );

    group('Test for materialapp', () {
      testWidgets(
          'test material returns lightmode child when brightness is light',
          (tester) async {
        await tester.pumpWidget(
          makeTestableMaterialWidget(
            Brightness.light,
          ),
        );

        expect(lightModeFinder, findsOneWidget);
        expect(darkModeFinder, findsNothing);
      });

      testWidgets(
          'test material returns darkmode child when brightness is dark',
          (tester) async {
        await tester.pumpWidget(
          makeTestableMaterialWidget(
            Brightness.dark,
          ),
        );

        expect(lightModeFinder, findsNothing);
        expect(darkModeFinder, findsOneWidget);
      });
    });

    group('Test for cupertinoapp', () {
      testWidgets(
          'test cupertino returns lightmode child when brightness is light',
          (tester) async {
        await tester.pumpWidget(
          makeTestableCupertinoWidget(
            Brightness.light,
          ),
        );

        expect(lightModeFinder, findsOneWidget);
        expect(darkModeFinder, findsNothing);
      });

      testWidgets(
          'test cupertino returns darkmode child when brightness is dark',
          (tester) async {
        await tester.pumpWidget(
          makeTestableCupertinoWidget(
            Brightness.dark,
          ),
        );

        expect(lightModeFinder, findsNothing);
        expect(darkModeFinder, findsOneWidget);
      });
    });
  });
}
