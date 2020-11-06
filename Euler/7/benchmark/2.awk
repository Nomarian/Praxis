#!/usr/bin/awk -f

function f(n,	i,limit) {
 limit = int(sqrt(n))
 for (i=3;i <= limit;i+=2)
  if (n%i==0) return 0
 return 1
}

function p1(n,	p,pn,i){
 if (n==1) return 2
 p=3; pn=2
 for (i=p+2; pn<n; i+=2)
  if ( f(i) ) { p=i;pn++ }
 return p
}

function p2(n,	p,pn){
 if (n==1) return 2
 p=3;pn=2
 while (pn<n) { p+=2
  if (f(p)) { pn++ }
 }
 return p
}

function p3(n,	p,pn){
 if (n==1) return 2
 p=3;pn=2
 while (pn<n) { p+=2
  f(p) && pn++
 }
 return p
}

function p4(n,	p,pn){
 if (n==1) return 2
 p=3;pn=2
 while (pn<n) { p+=2
  f(p) && pn++
 }
 return p
}

function p5(n,	p,pn){
 if (n==1) return 2
 pn=2
 for (p=3;pn<n;f(p) && pn++){ p+=2 }
 return p
}


function p6(n,	p,pn){
 p=1+(n==1 ? ++pn : pn=2) # really proud of this insanity
 while (pn<n && p+=2) f(p) && pn++
 return p
}

function p7(n,	p,pn){
 for (p=1+(n==1 ? ++pn : pn=2);pn<n;f(p) && pn++)
  p+=2
 return p
}

function p8(n,	p){
 for (n-=(p=2+(n>1))-1;n;f(p) && n--)
  p+=2
 return p
}

#BEGIN { for (x=1;x<4;x++) print "\t" p8(x) }
BEGIN { print p8(10001) }
