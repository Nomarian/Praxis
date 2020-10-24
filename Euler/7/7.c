#include <stdio.h>
#include <math.h>

int f(int n) {
 int limit = sqrt ( n );
 for (int i=3;i <= limit;i+=2)
  if (n%i==0) return 0;
 return 1;
}

int primepos(int n){
 if (n==1) { return 2; }
 int p, pn;
 p = 3; pn = 2;
 for (int i = p + 2; pn<n; i+=2)
  if ( f(i) ) { p=i;pn++; }
 return p;
}


int main() {
 printf("%i\n",primepos(10001));
 return 0;
}
