import "package:test/test.dart";
import "package:codewars/MultiplesOf3Or5.dart";
import "dart:math";

void tester(int n, int exp) => test("Testing for $n", () => expect(solution(n), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(10, 23);
    tester(20, 78);
    tester(200, 9168);
    tester(-1, 0);
    tester(0, 0);
    tester(1, 0);
    tester(2, 0);
    tester(3, 0);
    tester(4, 3);
    tester(5, 3);
    tester(6, 8);
  });
  group("Random tests", () {
    int sol(int n) => n <= 3 ? 0 : List<int>.generate(n - 3, (i) => i + 3).where((x) => x % 3 == 0 || x % 5 == 0).fold(0, (a, b) => a + b);
    Random rng = Random();
    for (int i = 0; i < 100; i++) {
      int r = rng.nextInt(200);
      tester(r, sol(r));
    }
  });
}