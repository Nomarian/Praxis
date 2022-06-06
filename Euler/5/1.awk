#!/usr/bin/awk -f

# This is basically lcm

function array2simplelist(){
}

# check if n is divisible by the numbers starting from from 2 to x
function divisibility(n,x,  i){
 for (i=2;i<=x;i++)
  if (n%i) return 1
 return 0
}

# This takes too long
# What number is evenly divisible by all numbers from b to c
# what number is evenly divisible by all numbers from 
function bruteforce(z,  i,a){ i++ # 1 is divisible by all
 while( divisibility(++i,z) ) {}
 return i
}

# methods, test all numbers
# check for factors, and thus, primality
# prime factors.
# s is an string of numbers divided by spaces
function lcm_bruteforce1(s,  a,an,i,x){
 # an = split(s,a," ")
 i++
 while (i++){
  for (x in a){ # has to be divisible by all which is why a function is SO NICE
    if (i%a[x]) {
      
    } else {
    }
  }
 }
}

BEGIN {
 # for (i=1;i++<10;) s = s " " i
 split("2 3 4",a," ")
 print lcm_bruteforce1()
}