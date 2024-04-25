void main() {
  int a1 = 1; // первое число в последовательности
  int an = 1000; // последнее число в последовательности
  int n = an - a1 + 1; // количество членов последовательности

  int sum = (n * (a1 + an)) ~/ 2;

  double average = sum / n;

  print('$average');
}
