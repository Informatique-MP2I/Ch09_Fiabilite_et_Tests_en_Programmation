#include <stdio.h>
#include <string.h>

void leet_speak(char *word){
  int n=strlen(word);
  for (int i=0;i<n;i++){
    if (word[i]=='L' || word[i]== 'l')
      word[i]='1';
    if (word[i]=='E' || word[i]== 'e')
      word[i]='3';
    if (word[i]=='T' || word[i]== 't')
      word[i]='7';
  }
  return;
}

int main(int argc, char **argv){
  char word[] = "Hello team"; // "Hello";
  printf("%s devient ", word);
  leet_speak(word);
  printf("%s.\n", word);
  
  return 0;
}
