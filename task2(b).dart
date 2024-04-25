import 'dart:io';

void main() {
  stdout.write("3 digit: ");
  int number = int.parse(stdin.readLineSync()!);

  bool contains4or7 = false;

  int hundreds = number ~/ 100;
  int tens = (number % 100) ~/ 10;
  int units = number % 10;

  if (hundreds == 3 || hundreds == 6 || hundreds == 9) {
    contains4or7 = true;
  } else if (tens == 3 || tens == 6 || tens == 9) {
    contains4or7 = true;
  } else if (units == 3 || units == 6 || units == 9) {
    contains4or7 = true;
  }

  if (contains4or7) {
    print("Yes");
  } else {
    print("No");
  }
}
