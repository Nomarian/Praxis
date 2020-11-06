#!/usr/bin/awk -f

# this one... this one is a LOT
# 3 minutes in, REEEALLY SlOW

function f(n,	i,limit,x){ # array testing
 limit = int(sqrt(n))
 for (i in a){ x = a[i]
  if ( x > limit ) return 1
  if ( n % x == 0 ) return 0
 }
 return 1
}

function summation(n,	i,sum){
 sum = 2

 for (i=3; i<n; i+=2)
  if ( f(i) ) { print i; sum+=i; a[++an] = i }

 return sum
}

BEGIN {
 print summation(2000000)
}
