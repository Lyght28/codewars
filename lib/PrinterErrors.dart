String printerError(String s, [int count = 0]) {
  s.split('').forEach((element) {count += List<String>.generate(13, (i) => String.fromCharCode(97+i)).contains(element) ? 1 : 0;});
  return('${s.length - count}/${s.length}');
}

/* More Optimized but less fun
  String printerError(String s, [int count = 0, List<String> list = const ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm']]) {
    s.split('').forEach((element) {count += list.contains(element) ? 1 : 0;});
    return('${s.length - count}/${s.length}');
  }
*/