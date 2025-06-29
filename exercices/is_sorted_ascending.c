#include <stdio.h>
#include <stdlib.h>

int is_sorted_ascending(int *t, int n){
    for(int i=0;i<n-1;i++){
      if(t[i]>t[i+1])
	return 0;
    }
    return 1;
}


int main(int argc, char **argv) {
    // int *t=NULL;
    // int t[0]={};
    // int t[1]={4};
    // int t[5]={40,41,42,43,44};
    int t[5]={42,44,43,40,41};
    int n=5;

    if(is_sorted_ascending(t, n) != 1)
      printf("The table is not sorted.\n");
    else
      printf("The table is sorted.\n");
    return 0;
}

