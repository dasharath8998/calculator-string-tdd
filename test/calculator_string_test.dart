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

  test('newline with comma', () {
    final calculator = CalculatorString();
    final result = calculator.add('1\n2,3');
    expect(result, 6);
  });

  test('custom delimiter in input', () {
    final calculator = CalculatorString();
    final result = calculator.add('//;\n1;2');
    expect(result, 3);
  });

  test('throws exception on negative number', () {
    final calculator = CalculatorString();

    expect(() => calculator.add('1,-1,2'), throwsException);
  });

  test('throws exception list all negative numbers', () {
    final calculator = CalculatorString();
    Exception? exception;
    try {
      calculator.add('1,-2,-3');
    } catch (e) {
      exception = e as Exception;
    }
    expect(exception.toString(), contains('negative numbers not allowed'));
    expect(exception.toString(), contains('-2'));
    expect(exception.toString(), contains('-3'));
  });
}
