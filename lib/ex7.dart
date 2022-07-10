//Реализуйте метод, который вычисляет корень любой заданной степени из числа.
// Реализуйте данный метод как extension-метод для num.
// Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
// Запрещается использовать методы math.
// В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.

void main() {
  print(0.sqrt());
  print(1.sqrt());
  print(9.sqrt());
  print(100.sqrt());
  print(2294967291.sqrt());
  print(4294967299.sqrt());
  print((-5).sqrt());

}

extension Operations on num {
  double sqrt() {
    if (this < 0) {
      throw UnsupportedError('Division by zero exception');
    }  else {
      double a = toDouble();
      double b = toDouble();
      while (b * b > a  ) {
        b = (b + a / b) / 2;
      }
      return b;
    }
  }
}