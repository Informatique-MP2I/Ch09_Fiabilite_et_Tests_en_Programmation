int tests(int n, int m) {
  if (n != 0) {
    m = 2 * m;
  }
  else {
    m = m + n;
  }
  if (n < 2) {
    m = n / m;
  }
  else {
    m = m - n;
  }
  return m;
}

int main(int argc, char **argv) {
  int m = tests(2,5);
  
  return 0;
}
