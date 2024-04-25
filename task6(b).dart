import 'dart:io';

int sumOfRange(int start, int end) {
  int sum = 0;
  for (int i = start; i <= end; i++) {
    sum += i;
  }
  return sum;
}

void main() {
  stdout.write("a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("b: ");
  int b = int.parse(stdin.readLineSync()!);

  int sum = sumOfRange(a, b);
  print('$sum');
}
