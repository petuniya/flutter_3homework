import 'dart:io';

double averageInRange(int a, int b) {
  int sum = 0;
  int count = 0;

  for (int i = a; i <= b; i++) {
    sum += i;
    count++;
  }

  return sum / count;
}

void main() {
  stdout.write("a: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("b: ");
  int b = int.parse(stdin.readLineSync()!);

  if (b < a) {
    print("Ошибка: b должно быть больше или равно a.");
    return;
  }

  double avg = averageInRange(a, b);
  print('$avg');
}
