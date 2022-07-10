void main() {
  print("НОД: ${gcd(5, 20)}");
  print("НОК: ${lcm(12, 18)}");
  print("Простые множители: ${factorize(30)}");
}


//НОД
int gcd(int n1, int n2) {
  if (n2 == 0) {
    return n1;
  }
  return gcd(n2, n1 % n2);
}

//НОК
int lcm(int n1, int n2) {
  return (n1 * n2) ~/ gcd(n1, n2);
}

// Разбивает число на простые множители и возвращает их
List<int> factorize(int n, [int k = 2]) {
  List<int> result = [];
  if (k > n) return result;
  if (n % k == 0) {
    result.add(k);
    while (n % k == 0) {
      n = n ~/ k;
    }
  }
  result.addAll(factorize(n, k + 1));
  return result;
}