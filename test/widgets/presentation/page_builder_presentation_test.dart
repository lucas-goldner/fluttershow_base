import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/presentation_page.dart';
import 'package:fluttershow_base/components/widgets/presentation/page_builder_presentation.dart';

void main() {
  group('test PageBuilderPresentation', () {
    testWidgets('test renders correct number of pages', (tester) async {
      final mockPages = List<PresentationSlide>.generate(
        5,
        (index) => PresentationSlide(slideWidget: Text('Page $index')),
      );

      final pageController = PageController();

      await tester.pumpWidget(
        MaterialApp(
          home: PageBuilderPresentation(
            presentationPages: mockPages,
            pageController: pageController,
          ),
        ),
      );

      expect(find.text('Page 0'), findsOneWidget);
      expect(find.text('Page 1'), findsNothing);
    });
  });
}
