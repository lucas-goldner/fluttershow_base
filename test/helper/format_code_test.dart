import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershow_base/components/helper/format_code.dart';

void main() {
  test('test formatCode should format the provided code', () {
    const unformattedCode = 'void main(){print("Hello, world!");}';
    const expectedFormattedCode =
        'void main() {\n  print("Hello, world!");\n}\n';
    final formattedCode = formatCode(unformattedCode);
    expect(formattedCode, equals(expectedFormattedCode));
  });

  test('test formatCode should return the original code if formatting fails',
      () {
    const unformattedCode = 'void main() {';
    const expectedCode = unformattedCode;
    final formattedCode = formatCode(unformattedCode);
    expect(formattedCode, equals(expectedCode));
  });
}
