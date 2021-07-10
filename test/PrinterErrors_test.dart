import "package:test/test.dart";
import "package:codewars/PrinterErrors.dart";
import "dart:math";

void main() {
  group('Fixed tests', () {
    test("Testing for aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz", () {
      expect(printerError("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"), equals("3/56"));
    });
    test("Testing for kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz", () {
      expect(printerError("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"), equals("6/60"));
    });
    test("Testing for kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu", () {
      expect(printerError("kkkwwwaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyzuuuuu"), equals("11/65"));
    });
  });
  group("Random tests", () {
    Random rinst = Random();
    int rand(int min, int max) => rinst.nextInt(max - min + 1) + min;
    String sol(String s) => s.split('').where((x) => x.codeUnitAt(0) > 109).length.toString() + "/" + s.length.toString();
    for (int i = 0; i < 100; i++) {
      int k = rand(10, 310);
      String res = List<String>.generate(k, (_) => String.fromCharCode(rand(97, 109))).join('');
      for (int j = k; j < 2 * k; j++) {
        res += String.fromCharCode(i % 17 == 0 ? rand(110, 122) : rand(97, 109));
      }
      test("Random test ${i + 1}", () => expect(printerError(res), equals(sol(res))));
    }
  });
}