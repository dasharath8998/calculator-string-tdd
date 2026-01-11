import 'package:flutter_test/flutter_test.dart';
import 'package:calculator_string_tdd/calculator_string.dart';

void main() {
  test('returns 0 for empty string', () {
    final calculator = CalculatorString();
    final result = calculator.add('');
    expect(result, 0);
  });

  test('returns the same number', () {
    final calculator = CalculatorString();
    final result = calculator.add('1');
    expect(result, 1);
  });

  test('returns sum of two numbers', () {
    final calculator = CalculatorString();
    final result = calculator.add('1,5');
    expect(result, 6);
  });

  test('returns sum when more than two numbers', () {
    final calculator = CalculatorString();
    final result = calculator.add('1,2,3');
    expect(result, 6);
  });
}
