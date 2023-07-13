import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/model/enum/layout_flex_units.dart';

void main() {
  test('test layout flex units header is 2', () {
    expect(LayoutFlexUnits.header.flexUnits, 2);
  });

  test('test layout flex units body is 5', () {
    expect(LayoutFlexUnits.body.flexUnits, 5);
  });

  test('test layout flex units footer is 1', () {
    expect(LayoutFlexUnits.footer.flexUnits, 1);
  });
}
