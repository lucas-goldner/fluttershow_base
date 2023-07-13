import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/model/enum/animations.dart';
import 'package:fluttershow_base/components/model/enum/directional_animation_direction.dart';
import 'package:fluttershow_base/components/widgets/animation/directional_animation.dart';
import 'package:fluttershow_base/components/widgets/animation/fade_animation.dart';

void main() {
  test('test returns FadeAnimation when fadeAnimation is set', () {
    const animations = Animations.fadeAnimation;
    final child = Container();
    final arguments = AnimationArguments(Animations.fadeAnimation, delay: 100);

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
      direction: DirectionalAnimationDirection.right,
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

  test('test returns child if not animationArguments are passed', () {
    const animations = Animations.fadeAnimation;
    final child = Container();

    final animatedWidget = animations.animateWidget(child);

    expect(animatedWidget, isA<Container>());
  });
}
