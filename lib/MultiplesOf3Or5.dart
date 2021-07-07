int solution(int n) => List<int>.generate((n <= 0) ? 1 : n, (int index) => index)
    .where((index) => ((index % 3 == 0) || (index % 5 == 0) ))
    .reduce((value, element) => value + element);

/*
int solution(int n, [int sum = 0]) {
  for (int i = 0; i < n; i++)
    sum += (i % 3 == 0) || (i % 5 == 0) ? i : 0;
  return(sum);
}
*/