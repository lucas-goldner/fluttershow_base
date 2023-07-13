import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/page_directional_animations.dart';

void main() {
  group('PageDirectionalAnimations', () {
    test('test top returns the correct offset', () {
      expect(PageDirectionalAnimations.top.offset, equals(const Offset(0, 1)));
    });

    test('test bottom returns the correct offset', () {
      expect(
        PageDirectionalAnimations.bottom.offset,
        equals(const Offset(0, -1)),
      );
    });

    test('test left returns the correct offset', () {
      expect(
        PageDirectionalAnimations.left.offset,
        equals(const Offset(-1, 0)),
      );
    });

    test('test right returns the correct offset', () {
      expect(
        PageDirectionalAnimations.right.offset,
        equals(const Offset(1, 0)),
      );
    });
  });
}
