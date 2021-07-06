int nbYear(int p0, double percent, int aug, int p) {
  int pop = p0, nbYears = 0;
  while(pop < p) {
    pop += (pop * (percent/100) + aug).floor();
    nbYears++;
  } return (nbYears);
}