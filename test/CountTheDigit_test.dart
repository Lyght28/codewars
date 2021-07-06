import "package:test/test.dart";
import "package:codewars/CountTheDigit.dart";
import "dart:math";

void main() {
  void dotest(int n, int d, int exp) {
    test("nbDig($n, $d)", () => expect(nbDig(n, d), equals(exp)));
  }
  group("fixed tests", () {
    dotest(5750, 0, 4700);
    dotest(11011, 2, 9481);
    dotest(12224, 8, 7733);
    dotest(11549, 1, 11905);
    dotest(14550, 7, 8014);

  });
}

