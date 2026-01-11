class CalculatorString {
  int add(String numberList) {
    if (numberList.isEmpty) {
      return 0;
    }
    String delimiter = ',';
    if (numberList.startsWith('//')) {
      int indexNewLine = numberList.indexOf('\n');
      delimiter = numberList.substring(2, indexNewLine);
      numberList = numberList.substring(indexNewLine + 1);
    }
    numberList = numberList.replaceAll('\n', delimiter);
    List<String> parts = numberList.split(delimiter);
    List<int> negativeNumList = [];
    int sum = 0;
    for (int i = 0; i < parts.length; i++) {
      int value = int.parse(parts[i]);
      if (value < 0) {
        negativeNumList.add(value);
      } else if (value <= 1000) {
        sum = sum + value;
      }
    }
    if (negativeNumList.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed: ${negativeNumList.join(', ')}',
      );
    }
    return sum;
  }
}
