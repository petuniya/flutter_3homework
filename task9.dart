import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  int lastDigit = number % 10; // Последняя цифра
  int digitCount3 = 0; // Количество цифр 3
  int lastDigitCount = 0; // Количество вхождений последней цифры
  int evenDigitCount = 0; // Количество четных цифр
  int sumGreaterThan5 = 0; // Сумма цифр, больших 5
  int productGreaterThan7 = 1; // Произведение цифр, больших 7
  int zeroAndFiveCount = 0; // Количество вхождений цифр 0 и 5

  // Перебираем цифры числа
  while (number > 0) {
    int digit = number % 10;

    // а) Проверяем количество цифр 3
    if (digit == 3) {
      digitCount3++;
    }

    // б) Проверяем количество вхождений последней цифры
    if (digit == lastDigit) {
      lastDigitCount++;
    }

    // в) Проверяем четность цифры
    if (digit % 2 == 0) {
      evenDigitCount++;
    }

    // г) Проверяем сумму цифр, больших 5
    if (digit > 5) {
      sumGreaterThan5 += digit;
    }

    // д) Проверяем произведение цифр, больших 7
    if (digit > 7) {
      productGreaterThan7 *= digit;
    }

    // е) Проверяем количество вхождений цифр 0 и 5
    if (digit == 0 || digit == 5) {
      zeroAndFiveCount++;
    }

    number ~/= 10; // Удаляем последнюю цифру числа
  }

  print('а) $digitCount3');
  print('б) ($lastDigit): $lastDigitCount');
  print('в) $evenDigitCount');
  print('г) $sumGreaterThan5');
  print('д) $productGreaterThan7');
  print('е) $zeroAndFiveCount');
}
