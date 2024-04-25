import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);

  bool isLuckyNumber(int number) {
    // Проверяем, является ли число шестизначным
    if (number < 100000 || number > 999999) {
      return false;
    }

    // Получаем первые три цифры
    int firstPart = number ~/ 1000;

    // Получаем последние три цифры
    int lastPart = number % 1000;

    // Вычисляем суммы цифр
    int sumFirstPart =
        firstPart % 10 + (firstPart ~/ 10) % 10 + (firstPart ~/ 100);
    int sumLastPart = lastPart % 10 + (lastPart ~/ 10) % 10 + (lastPart ~/ 100);

    // Сравниваем суммы и возвращаем результат
    return sumFirstPart == sumLastPart;
  }

  if (isLuckyNumber(number)) {
    print("Yes");
  } else {
    print("No");
  }
}
