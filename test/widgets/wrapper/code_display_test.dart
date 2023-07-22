import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';

void main() {
  final boxDecorationToTest = BoxDecoration(
    color: Colors.yellow,
    borderRadius: BorderRadius.circular(8),
  );
  const codeToTest = '''
      // This is a comment
      void main() {
        print('Hello, world!');
      }
    ''';

  Widget makeTestableWidget({
    required String code,
    CodeDisplayColorThemes? codeColorTheme,
    BoxDecoration? boxDecoration,
    TextStyle? commentTextStyle,
    TextStyle? keywordTextStyle,
  }) =>
      MaterialApp(
        home: Scaffold(
          body: CodeDisplay(
            code,
            codeColorTheme: codeColorTheme,
            boxDecoration: boxDecoration,
            commentTextStyle: commentTextStyle,
            keywordTextStyle: keywordTextStyle,
          ),
        ),
      );

  testWidgets('test widget displays formatted code', (tester) async {
    await tester.pumpWidget(
      makeTestableWidget(code: codeToTest),
    );

    expect(find.textContaining('// This is a comment'), findsOneWidget);
    expect(find.textContaining('void main()'), findsOneWidget);
    expect(find.textContaining("print('Hello, world!');"), findsOneWidget);
  });

  testWidgets('test widget applies custom styles and decorations',
      (tester) async {
    await tester.pumpWidget(
      makeTestableWidget(
        code: codeToTest,
        codeColorTheme: CodeDisplayColorThemes.base16Light,
        boxDecoration: boxDecorationToTest,
        commentTextStyle: const TextStyle(fontStyle: FontStyle.italic),
        keywordTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );

    final containerFinder = find.byKey(const Key('CodeDisplayContainer'));
    expect(containerFinder, findsOneWidget);
    final container = tester.widget<Container>(containerFinder);
    expect(
      container.decoration,
      boxDecorationToTest,
    );

    final codeDisplayFinder = find.byType(CodeDisplay);
    expect(codeDisplayFinder, findsOneWidget);
    final codeDisplay = tester.widget<CodeDisplay>(codeDisplayFinder);
    expect(codeDisplay.commentTextStyle?.fontStyle, FontStyle.italic);
    expect(codeDisplay.keywordTextStyle?.fontWeight, FontWeight.bold);
  });

  group('test getBoxDecoration() specific cases', () {
    Future<void> makeBoxDecorationTestableWidget(
      WidgetTester tester, {
      BoxDecoration? boxDecoration,
    }) async {
      await tester.pumpWidget(
        makeTestableWidget(
          code: codeToTest,
          codeColorTheme: CodeDisplayColorThemes.base16Light,
          boxDecoration: boxDecoration,
        ),
      );
    }

    testWidgets('test widget with boxdecoration without specific color',
        (tester) async {
      await makeBoxDecorationTestableWidget(
        tester,
        boxDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
      );

      final containerFinder = find.byKey(const Key('CodeDisplayContainer'));
      final container = tester.widget<Container>(containerFinder);
      expect(containerFinder, findsOneWidget);
      expect(
        container.decoration,
        BoxDecoration(
          color: CodeDisplayColorThemes.base16Light.backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
      );
    });

    testWidgets('test widget without boxdecoration', (tester) async {
      await makeBoxDecorationTestableWidget(
        tester,
      );

      final containerFinder = find.byKey(const Key('CodeDisplayContainer'));
      final container = tester.widget<Container>(containerFinder);
      expect(containerFinder, findsOneWidget);
      expect(
        container.decoration,
        BoxDecoration(
          color: CodeDisplayColorThemes.base16Light.backgroundColor,
        ),
      );
    });
  });
}
