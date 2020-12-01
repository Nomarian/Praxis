#!/usr/bin/awk -f

{
 a[NR]=$1
 for (i=NR;--i;)
  if ($1+a[i] == 2020) {
   print NR " and " i " : " $1 "x" a[i] " = " a[i]*$1
   exit
  }
}

