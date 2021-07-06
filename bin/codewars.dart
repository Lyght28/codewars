import 'package:codewars/CountTheDigit.dart';
import 'package:codewars/GrowthOfAPopulation.dart';

void main() {
  List<List<int>> list = [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]];
  print(list.expand((x) => x).toSet().toList());
}
