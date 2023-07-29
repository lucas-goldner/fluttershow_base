import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/presentation_page.dart';
import 'package:fluttershow_base/components/widgets/presentation/scaling_presentation.dart';

void main() {
  final mockPresentationPages = <PresentationSlide>[
    const PresentationSlide(slideWidget: Text('Slide 1')),
    const PresentationSlide(slideWidget: Text('Slide 2')),
    const PresentationSlide(slideWidget: Text('Slide 3')),
  ];

  final pageController = PageController();

  group('test ScalingPresentation', () {
    testWidgets('test renders correct slide based on pageIndex',
        (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ScalingPresentation(
            pageIndex: 1,
            presentationPages: mockPresentationPages,
            pageController: pageController,
          ),
        ),
      );

      expect(find.text('Slide 2'), findsOneWidget);
    });

    testWidgets('test does not render incorrect slide', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ScalingPresentation(
            pageIndex: 0,
            presentationPages: mockPresentationPages,
            pageController: pageController,
          ),
        ),
      );

      expect(find.text('Slide 2'), findsNothing);
    });
  });
}
