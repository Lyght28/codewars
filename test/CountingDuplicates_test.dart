// See https://pub.dartlang.org/packages/test
import "package:test/test.dart";
import "package:codewars/CountingDuplicates.dart";
import 'dart:math' as math;

void main() {
  test("add", () {
    expect(duplicateCount(""), equals(0));
    expect(duplicateCount("abcde"), equals(0));
    expect(duplicateCount("aabbcde"), equals(2));
    expect(duplicateCount("aabBcde"), equals(2));
    expect(duplicateCount("Indivisibility"), equals(1));
    expect(duplicateCount("Indivisibilities"), equals(2));
    expect(duplicateCount("aabbCCdee"), equals(4));
  });

  test("More tests", () {
    var lowers = "abcdefghijklmnopqrstuvwxyz";
    var uppers = lowers.toUpperCase();
    expect(duplicateCount(lowers), 0);
    expect(duplicateCount(lowers + "baaAAB"), equals(2));

    expect(duplicateCount(lowers+lowers), equals(26));
    expect(duplicateCount(lowers+uppers), equals(26));



    StringBuffer sb = StringBuffer();
    var random = math.Random();
    int len = 0;
    for(int j = 0; j <= 999; j++){
      len = 0;
      sb.clear();
      lowers.split('').forEach((el){
        var count = random.nextInt(3);

        if(count > 0){
          List.generate(count, (i){
            if(i == 1){
              len++;
            }
            sb.write(i.isOdd ? el.toUpperCase() : el);
          });
        }else{
          sb.write(el);
        }
      });
      expect(duplicateCount(sb.toString()), equals(len));
    }

  });
}