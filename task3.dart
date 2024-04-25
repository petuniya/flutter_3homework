import 'dart:io';

void main() {
  stdout.write("a: ");
  int n = int.parse(stdin.readLineSync()!);

  if (isPalindrome(n)) {
    print("Yes");
  } else {
    print("No");
  }
}

bool isPalindrome(int number) {
  int reverse = int.parse(number.toString().split('').reversed.join(''));
  return number == reverse;
}
