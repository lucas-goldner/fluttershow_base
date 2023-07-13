import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/widgets/text/gradient_text.dart';

void main() {
  const text = 'Hello';
  const style = TextStyle(fontSize: 16);
  const Gradient gradient = LinearGradient(
    colors: [Colors.red, Colors.blue],
  );

  testWidgets('testWidget renders correctly with the given text and gradient',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GradientText(text, gradient: gradient, style: style),
        ),
      ),
    );

    final gradientTextFinder = find.byType(GradientText);
    final textFinder = find.text(text);

    expect(gradientTextFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);

    final gradientTextWidget = tester.widget<GradientText>(gradientTextFinder);
    expect(gradientTextWidget.gradient, equals(gradient));

    final textWidget = tester.widget<Text>(textFinder);
    expect(textWidget.style, equals(style));
  });
}
