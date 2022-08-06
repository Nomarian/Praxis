
//#!/usr/local/bin/tcc -run

#include <stdio.h>
#include <math.h>

// bool
unsigned int isprime(unsigned int oddnum) {
// tests from 3 onward, so the number should already be odd
	double x = oddnum;
	int limit = floor( sqrt(x) );
	for (int i=3;i <= limit;i+=2)
		if (oddnum%i==0)
			return 0;
	return 1;
}

unsigned int primepos(unsigned int pos){
	unsigned int prime = pos==1 ? 2 : 3;
	pos -= prime - 1; // 2 is 1, 3 is 2
	while (pos)
		if (isprime(prime+=2))
			pos--;
	return prime;
}

unsigned int main(void){
	printf("%i\n",primepos(10001) );
	return 0;
}