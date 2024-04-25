import 'dart:math';

void main() {
  double a = 1; // First term
  double r = 1 / 3; // Common ratio
  int n = 8; // Number of terms

  double result = a * (1 - pow(r, n)) / (1 - r);
  result += 1; // Add 1 to the sum
  print('Ответ: $result');
}
