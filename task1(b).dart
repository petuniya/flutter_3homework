import 'dart:io';

void main() {
  stdout.write('a: ');
  int n = int.parse(stdin.readLineSync()!);

  int tensDigit = n ~/ 10;
  int onesDigit = n % 10;

  bool contains4or7 = tensDigit == 3 ||
      onesDigit == 3 ||
      tensDigit == 6 ||
      onesDigit == 6 ||
      tensDigit == 9 ||
      onesDigit == 9;

  print(' $contains4or7');
}
