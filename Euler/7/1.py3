#!/usr/bin/env python3
import math

def isPrime(n):
    for i in range(3, int(math.sqrt(n)+1),2):
        if n % i == 0:
            return False;
    return True;


def primePos(n):
	p=3
	pn=2
	if n==2:
		return p
	while pn<n:
		p = p + 2
		if isPrime(p):
			pn=pn+1
	return p

print(primePos(10001))