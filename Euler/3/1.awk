#!/usr/bin/awk -f

# isprime? but only tests odd numbers
function isprimeu(n,	i,limit) {
 limit = int(sqrt(n))
 for (i=3;i <= limit;i+=2)
  if (n%i==0) return 0
 return 1
}

# is n prime? t/f
function isprime(n){
 if (n==2) return 1
 if (n<2 || n%2==0) return 0
 return isprimeu(n)
}

function primepos(n,	p){
 # for (n -= ( (n==1) ? p=2 : p=3 ) - 1 ; n; isprimeu(p+=2) && n--){}
 n -= ( (n==1) ? p=2 : p=3 ) - 1
 while (n) isprimeu(p+=2) && n--
 return p
}

function primefactors(n,	p,c,a,an){
 if (n==1) return a[1] = n
 while ( ! isprime(n) ) {
  p = primepos(++c)
  if ( n%p==0 ) {
   a[++an] = p; n = n/p; c = 0
  }
 }
 a[++an] = n
}

function primefactors1(n,	p,c){
 if (n==1) {print n;return n}
 printf n " = "
 while ( ! isprime(n) ) {
  p = primepos(++c)
  if ( n % p ==0 ) {
   printf p " x "
   n = n/p; c = 0
  }
 }
 print n
}

BEGIN {
# print "-----"
# for (x=10;x<10;x++)
# a = primefactors(13195)
 primefactors1(600851475143)
}