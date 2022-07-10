//Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
void main() {
  print(NumeralSystem.binToDecimal('101'));
  print(NumeralSystem.decimalToBin(9));
}

class NumeralSystem {
  static int binToDecimal(String binNum) {
    return int.parse(binNum, radix: 2);
  }

  static String decimalToBin(int decNum) {
    return decNum.toRadixString(2);
  }
}