#include <stdio.h>

int main(){
  int x = 0;
  int y = 1;
  for(int i = 0; 1; i++){
    scanf("%d", &y);
    x+=y;
    if(y == 0){
      break;
    }
  }
  printf("%d\n", x);
  return 0;
}