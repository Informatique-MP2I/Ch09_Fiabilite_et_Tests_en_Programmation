/* in */
int syracuse(int s){
  /* 1 */
  if (s<=0)
    /* out1 */
    return -1;
  /* 2 */
  int n=0;
  int u=s;
  /* 3 */
  while(u != 1){
    /* 4 */
    if (u%2 == 0) {
      /* 5 */
      u = u/2;
    }
    else{
      /* 6 */
      u = 3*u+1;
    }
    /* 7 */
    n = n+1;
  }
  /* out2 */
  return n;
}
