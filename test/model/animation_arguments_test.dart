import 'package:flutter/animation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/animation_arguments.dart';
import 'package:fluttershow_base/components/model/enum/animations.dart';

void main() {
  test('test if no curve is provided default to easeIn', () {
    const animation = Animations.fadeAnimation;
    const delay = 1;

    final arguments = AnimationArguments(animation, delay: delay);

    expect(arguments.curve, equals(Curves.easeIn));
  });

  test('test throws if DirectionalAnimation is set without direction', () {
    expect(
      () => AnimationArguments(Animations.directionalAnimation, delay: 100),
      throwsA(isA<AssertionError>()),
    );
  });
}
