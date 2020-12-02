#!/usr/bin/awk -f

# for now, only travels the array a in all orders available

function traveler(initial,step,limit,	t){
# printf(" i:%s;s:%s  ",initial,step)
 for (t=initial; (t+=step) < limit;) # traversal loop
  if (a[t-step]+a[t]+$1 == 2020){
   print a[t-step]*a[t]*$1
   exit
  }
#  printf t-step " " t ","
# print ""
}

NR>2 {
# print NR
# this is 3 well controlled loops
# 
 for (i=0;++i<(NR/2);)
  for (s=i;s<(NR-i);s++) # start at 0
   traveler(i,s,NR) # start at 1
}

{ a[NR]=$1 }
