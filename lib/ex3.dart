//Реализуйте метод, который принимает строку слов, разделённых пробелами.
// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

void main() {
  print(findNums('London is the capi45tal 12  of Great  15 Britain'));
}

List<int> findNums(String string) {
  List<int> result = [];
  for (var word in string.split(' ')) {
    int? n = int.tryParse(word);
    if (n != null) {
      result.add(n);
    }
  }
  return result;
}
