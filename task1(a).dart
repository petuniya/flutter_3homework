import 'dart:io';

void main() {
  stdout.write('a: ');
  int n = int.parse(stdin.readLineSync()!);

  int tensDigit = n ~/ 10;
  int onesDigit = n % 10;

  bool contains4or7 =
      tensDigit == 4 || onesDigit == 4 || tensDigit == 7 || onesDigit == 7;

  print(' $contains4or7');
}
