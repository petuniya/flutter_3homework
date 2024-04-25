import 'dart:io';

bool containsThreeIdenticalDigits(int n) {
  String numStr = n.toString();

  for (int i = 0; i < 10; i++) {
    int count = numStr.split(i.toString()).length - 1;
    if (count == 3) {
      return true;
    }
  }

  return false;
}

void main() {
  print('Enter a number (n <= 9999): ');
  int n = int.parse(stdin.readLineSync()!); // Read input number from user
  bool result = containsThreeIdenticalDigits(n);
  print('$result');
}
