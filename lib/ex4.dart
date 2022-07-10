//Есть коллекция слов. Реализуйте метод, возвращающий Map.
// Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.

void main() {
  print(calcCountOfWords(
      ["мама", "mana", "мама", "mana", "мама", "mana", "njknkn"]));
}

Map<String, int> calcCountOfWords(Iterable<String> words) {
  Map<String, int> result = {};
  for (var word in words) {
    result[word] = (result[word] ?? 0) + 1;
  }
  return result;
}