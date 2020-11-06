// gcc -lm 7.c
// doesn't work because I AINT MESSING WITH TYPES

#include <stdio.h>
#include <math.h>

int f(int n) {
 int limit = sqrt ( n );
 for (int i=3;i <= limit;i+=2)
  if (n%i==0) return 0;
 return 1;
}

int summation(int n){
 double sum = 2;
 for (int i = 3; i<n; i+=2)
  if ( f(i) ) sum+=i;
//  f(i) && sum+=i
 return sum;
}

int main() {
 printf("%i\n",summation(2000000));
 return 0;
}
