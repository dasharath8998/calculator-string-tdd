class CalculatorString {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    numbers = numbers.replaceAll('\n', ',');
    List<String> parts = numbers.split(',');
    int sum = 0;
    for (int i = 0; i < parts.length; i++) {
      sum = sum + int.parse(parts[i]);
    }
    return sum;
  }
}
