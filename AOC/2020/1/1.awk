#!/usr/bin/awk -f
{
 a[NR]=$1
 for (i=NR;--i;$1+a[i] == 2020 && i=1 && x=i);
}

x {
 print NR " and " x " : " $1 "x" a[x] " = " a[x]*$1
 exit
}'