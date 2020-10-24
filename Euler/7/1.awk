
#!/usr/bin/awk -f

function f(n,	i,limit) {
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

BEGIN { print primepos(10001) }
