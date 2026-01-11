class CalculatorString {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    String delimiter = ',';
    if (numbers.startsWith('//')) {
      int indexNewLine = numbers.indexOf('\n');
      delimiter = numbers.substring(2, indexNewLine);
      numbers = numbers.substring(indexNewLine + 1);
    }
    numbers = numbers.replaceAll('\n', delimiter);
    List<String> parts = numbers.split(delimiter);
    int sum = 0;
    for (int i = 0; i < parts.length; i++) {
      int value = int.parse(parts[i]);
      if (value < 0) {
        throw Exception('negative numbers not allowed');
      }
      sum = sum + value;
    }
    return sum;
  }
}
