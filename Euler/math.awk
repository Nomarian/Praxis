#!/usr/bin/awk -f

# Reminder
function multiply(x,y,i){
 for (i=x;--y;) i+=x
 return i
}

# Reminder
function powerof(x,y,i){
 #for (i=x;--y;) i*=x
 for (i=x;--y;) i = multiply(x,i)
 return i
}

function factors(n,	limit){
 limit = int(sqrt(n))
 for (i=2;i<limit;i++) {
  if (n%i==0) { print " " i ":" n/i }
 }
}

function isprimeu(n,	i,limit) {
 limit = int(sqrt(n))
 for (i=3;i <= limit;i+=2)
  if (n%i==0) return 0
 return 1
}

function primepos(n,	p){
 n -= ( (n==1) ? p=2 : p=3 ) - 1
 while (n) f(p+=2) && n--
 return p
}

function isprime(n) {
 if (n<3) return n==2
 if (n%2==0) return 0
 return isprimeu(n)
}

BEGIN {
 for(i=1;i<=20;i++) print i ": " isprime(i)
 print "-------"
}
