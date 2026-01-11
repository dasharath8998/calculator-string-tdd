class CalculatorString {
  int add(String numbers) {
    if(numbers.isEmpty) {
      return 0;
    }
    if (numbers.contains(',')) {
      List<String> parts = numbers.split(',');
      int  first = int.parse(parts[0]);
      int  second = int.parse(parts[1]);
      return first + second;
    }
    return int.parse(numbers);
  }
}
