import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/code_display_themes.dart';
import 'package:fluttershow_base/components/widgets/wrapper/code_display.dart';

void main() {
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
    const code = '''
      void main() {
        print('Hello, world!');
      }
    ''';

    await tester.pumpWidget(
      makeTestableWidget(code: code),
    );

    expect(find.textContaining('void main()'), findsOneWidget);
    expect(find.textContaining("print('Hello, world!');"), findsOneWidget);
  });

  testWidgets('test widget applies custom styles and decorations',
      (tester) async {
    const code = '''
      // This is a comment
      void main() {
        print('Hello, world!');
      }
    ''';

    await tester.pumpWidget(
      makeTestableWidget(
        code: code,
        codeColorTheme: CodeDisplayColorThemes.base16Light,
        boxDecoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(8),
        ),
        commentTextStyle: const TextStyle(fontStyle: FontStyle.italic),
        keywordTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );

    final containerFinder = find.byKey(const Key('CodeDisplayContainer'));
    expect(containerFinder, findsOneWidget);
    final container = tester.widget<Container>(containerFinder);
    expect(
      container.decoration,
      BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final codeDisplayFinder = find.byType(CodeDisplay);
    expect(codeDisplayFinder, findsOneWidget);
    final codeDisplay = tester.widget<CodeDisplay>(codeDisplayFinder);
    expect(codeDisplay.commentTextStyle?.fontStyle, FontStyle.italic);
    expect(codeDisplay.keywordTextStyle?.fontWeight, FontWeight.bold);
  });

  group('test getBoxDecoration() specific cases', () {
    testWidgets('test widget with boxdecoration without specific color',
        (tester) async {
      const code = '''
      // This is a comment
      void main() {
        print('Hello, world!');
      }
    ''';

      await tester.pumpWidget(
        makeTestableWidget(
          code: code,
          codeColorTheme: CodeDisplayColorThemes.base16Light,
          boxDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          commentTextStyle: const TextStyle(fontStyle: FontStyle.italic),
          keywordTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

      final containerFinder = find.byKey(const Key('CodeDisplayContainer'));
      expect(containerFinder, findsOneWidget);
      final container = tester.widget<Container>(containerFinder);
      expect(
        container.decoration,
        BoxDecoration(
          color: CodeDisplayColorThemes.base16Light.backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
      );
    });

    testWidgets('test widget without boxdecoration', (tester) async {
      const code = '''
      // This is a comment
      void main() {
        print('Hello, world!');
      }
    ''';

      await tester.pumpWidget(
        makeTestableWidget(
          code: code,
          codeColorTheme: CodeDisplayColorThemes.base16Light,
          commentTextStyle: const TextStyle(fontStyle: FontStyle.italic),
          keywordTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

      final containerFinder = find.byKey(const Key('CodeDisplayContainer'));
      expect(containerFinder, findsOneWidget);
      final container = tester.widget<Container>(containerFinder);
      expect(
        container.decoration,
        BoxDecoration(
          color: CodeDisplayColorThemes.base16Light.backgroundColor,
        ),
      );
    });
  });
}