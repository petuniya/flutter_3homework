import 'dart:io';

void main() {
  stdout.write("2digit: ");
  int number = int.parse(stdin.readLineSync()!);

  stdout.write("а: ");
  int a = int.parse(stdin.readLineSync()!);

  int tens = number ~/ 10;
  int units = number % 10;

  if (tens == a || units == a) {
    print("Yes");
  } else {
    print("No");
  }
}
