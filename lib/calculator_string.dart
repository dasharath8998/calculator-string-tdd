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
      sum = sum + int.parse(parts[i]);
    }
    return sum;
  }
}
