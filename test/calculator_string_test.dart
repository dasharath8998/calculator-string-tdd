import 'package:flutter_test/flutter_test.dart';
import 'package:calculator_string_tdd/calculator_string.dart';

void main() {
  test('returns 0 for empty string', () {
    final calculator = CalculatorString();
    final result = calculator.add('');
    expect(result, 0);
  });
}
