int duplicateCount(String text, [int count = 0]) {
  text = text.toLowerCase();
  while (text.isNotEmpty) {
    count += text[0].allMatches(text).length > 1 ? 1 : 0;
    text = text.replaceAll(text[0], '');
  }
  return count;
}