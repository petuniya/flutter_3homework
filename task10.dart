import 'dart:io';

void main() {
  stdout.write('Enter a value for x: ');
  int x = int.parse(stdin.readLineSync()!);

  int sumGreaterThanX = 0;
  int countEvenNumbers = 0;

  stdout.write('Enter integers (ending with 0): ');

  while (true) {
    int number = int.tryParse(stdin.readLineSync()!) ?? 0;

    if (number == 0) {
      break; // Exit the loop when encountering 0
    }

    if (number > x) {
      sumGreaterThanX += number;
    }

    if (number % 2 == 0) {
      countEvenNumbers++;
    }
  }

  print('Sum of numbers greater than $x: $sumGreaterThanX');
  print('Count of even numbers: $countEvenNumbers');
}
