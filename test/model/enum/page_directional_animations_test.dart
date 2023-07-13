import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/directional_animation_direction.dart';

void main() {
  test('test top returns the correct offset', () {
    expect(
      DirectionalAnimationDirection.top.offset,
      equals(const Offset(0, 1)),
    );
  });

  test('test bottom returns the correct offset', () {
    expect(
      DirectionalAnimationDirection.bottom.offset,
      equals(const Offset(0, -1)),
    );
  });

  test('test left returns the correct offset', () {
    expect(
      DirectionalAnimationDirection.left.offset,
      equals(const Offset(-1, 0)),
    );
  });

  test('test right returns the correct offset', () {
    expect(
      DirectionalAnimationDirection.right.offset,
      equals(const Offset(1, 0)),
    );
  });
}
