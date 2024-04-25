import 'dart:io';

void main() {
  stdout.write("3 digit: ");
  int number = int.parse(stdin.readLineSync()!);

  bool contains4or7 = false;

  int hundreds = number ~/ 100;
  int tens = (number % 100) ~/ 10;
  int units = number % 10;

  if (hundreds == 4 || hundreds == 7) {
    contains4or7 = true;
  } else if (tens == 4 || tens == 7) {
    contains4or7 = true;
  } else if (units == 4 || units == 7) {
    contains4or7 = true;
  }

  if (contains4or7) {
    print("Yes");
  } else {
    print("No");
  }
}
