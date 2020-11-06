#!/usr/bin/awk -f

# 42 seconds

function f(n,	i,limit) {
 limit = int(sqrt(n))
 for (i=3;i <= limit;i+=2)
  if (n%i==0) return 0
 return 1
}

function summation(n,	i,sum){
 sum = 2
 for (i=3; i<n; i+=2)
  f(i) && sum+=i
 return sum
}

BEGIN {
 print summation(2000000)
}
