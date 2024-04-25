import 'dart:io';

void main() {
  stdout.write("3 digit: ");
  int number = int.parse(stdin.readLineSync()!);

  stdout.write("n: ");
  int n = int.parse(stdin.readLineSync()!);

  bool containsN = false;

  int hundreds = number ~/ 100;
  int tens = (number % 100) ~/ 10;
  int units = number % 10;

  if (hundreds == n || tens == n || units == n) {
    containsN = true;
  }

  if (containsN) {
    print("Yes");
  } else {
    print("No");
  }
}
