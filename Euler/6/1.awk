#!/usr/bin/awk -f

function factors(n,	limit,i){
 limit = int(sqrt(n))
 for (i=2;i<limit;i++) {
  if (n%i==0) { print " " i ":" n/i }
 }
}

function sumofsquares1(n,	i){
 for (;n;n--) i += n*n 
 return i
}

# pure math
function sumofsquares2(n,	i){
 return n*(n+1)*(2*n+1)/6
}

function sumofsquares(n){ return sumofsquares2(n) }

# First try
function squareofsum1(n,	i){
 for (;n;n--) i += n
 return i*i
}

# taken off of euler
function squareofsum2(n){
 n=n/2 * (n+1) 
 return n*n
}

function squareofsum(n){ return squareofsum2(n) }

function solution2(n,	x,y,i){
 for (;n;n--){ y += ++i; x += i*i }
 return y * y - x
}

function solution1(n){
 return squareofsum(n) - sumofsquares(n)
}

BEGIN {
 print solution1(10)
 print "------"
 # print squareofsum(100)
}
