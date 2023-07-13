import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/model/enum/animations.dart';
import 'package:fluttershow_base/components/model/enum/page_directional_animations.dart';
import 'package:fluttershow_base/components/widgets/animations/directional_animation.dart';
import 'package:fluttershow_base/components/widgets/animations/fade_animation.dart';

void main() {
  group('Animations Test', () {
    test('test returns FadeAnimation when fadeAnimation is set', () {
      const animations = Animations.fadeAnimation;
      final child = Container();
      final arguments =
          AnimationArguments(Animations.fadeAnimation, delay: 100);

      final animatedWidget =
          animations.animateWidget(child, animationArguments: arguments);

      expect(animatedWidget, isA<FadeAnimation>());
      expect((animatedWidget as FadeAnimation).delay, equals(arguments.delay));
      expect(animatedWidget.child, equals(child));
    });

    test('test returns DirectionalAnimation when directionalAnimation is set',
        () {
      const animations = Animations.directionalAnimation;
      final child = Container();
      final arguments = AnimationArguments(
        Animations.directionalAnimation,
        delay: 100,
        direction: PageDirectionalAnimations.right,
        animationCurve: Curves.easeInOut,
      );

      final animatedWidget =
          animations.animateWidget(child, animationArguments: arguments);

      expect(animatedWidget, isA<DirectionalAnimation>());
      expect(
        (animatedWidget as DirectionalAnimation).delay,
        equals(arguments.delay),
      );
      expect(
        animatedWidget.direction,
        equals(arguments.direction),
      );
      expect(animatedWidget.child, equals(child));
    });
  });
}
