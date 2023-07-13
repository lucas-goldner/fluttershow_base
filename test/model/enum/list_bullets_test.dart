import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/list_bullets.dart';

void main() {
  test('test circle returns correct Unicode character', () {
    expect(ListBullets.circle.uniCode, equals('\u2022'));
  });

  test('test circle_big returns correct Unicode character', () {
    expect(ListBullets.circle_big.uniCode, equals('\u25CF'));
  });

  test('test circle_outline returns correct Unicode character', () {
    expect(ListBullets.circle_outline.uniCode, equals('\u25E6'));
  });

  test('test square returns correct Unicode character', () {
    expect(ListBullets.square.uniCode, equals('\u25AA'));
  });

  test('test square_mini returns correct Unicode character', () {
    expect(ListBullets.square_mini.uniCode, equals('\u2219'));
  });

  test('test triangle returns correct Unicode character', () {
    expect(ListBullets.triangle.uniCode, equals('\u2023'));
  });
}
