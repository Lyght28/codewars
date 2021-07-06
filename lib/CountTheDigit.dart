int nbDig(int n, int d, [int count = 0]) {
  for (int i = 0; i <= n; i++)
    count += ((i * i).toString().split(d.toString()).length - 1);
  return count;
}