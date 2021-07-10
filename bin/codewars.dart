import 'package:codewars/CountTheDigit.dart';
import 'package:codewars/CountingDuplicates.dart';

void main() {
  String test = 'aabbcc';
  int count = 0;
  List<String> list = ['a', 'm'];
  test.split('').forEach((element) {count += list.contains(element) ? 1 : 0;});
  print(test.length-count);
  print(List<String>.generate(13, (i) => '\'${String.fromCharCode(97+i)}\''));
}
