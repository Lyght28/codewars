List<List<String>> howmuch(int m, int n) {
  List<List<String>> list = [];
  List<int>.generate((m - n).abs() +1, (int index) => index + ((m <= n) ? m : n))
      .forEach((i) {(i % 9 == 1 && i % 7 == 2) ? list.add(['M: $i', 'B: ${(i / 7).floor()}', 'C: ${(i / 9).floor()}']) : '';});
  return list;
}
