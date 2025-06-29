#include <stdio.h>
#include <assert.h>
/* Function square: calculates the square of a given number */
/* Inputs  : x, an integer
   Precond : x must be non-negative (x >= 0). 
   Outputs : the square of x
   Postcond: The result divided by x equals x (c.f. Precond). */
int square(int x) {
  assert(x >= 0); 
  return x * x; 
}
int main(int argc,char **argv) {
  printf("Square of 5 is %d\n", square(5));
  printf("Square of -5 is %d\n", square(-5));
  return 0;
}
