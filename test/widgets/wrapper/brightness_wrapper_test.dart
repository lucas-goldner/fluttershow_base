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

    Widget makeTestableWidget(
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

    testWidgets('test returns lightmode child when brightness is light',
        (tester) async {
      await tester.pumpWidget(
        makeTestableWidget(
          Brightness.light,
        ),
      );

      expect(lightModeFinder, findsOneWidget);
      expect(darkModeFinder, findsNothing);
    });

    testWidgets('test returns darkmode child when brightness is dark',
        (tester) async {
      await tester.pumpWidget(
        makeTestableWidget(
          Brightness.dark,
        ),
      );

      expect(lightModeFinder, findsNothing);
      expect(darkModeFinder, findsOneWidget);
    });
  });
}
