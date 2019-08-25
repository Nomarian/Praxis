#!/usr/bin/awk -f

BEGIN {
 limit = 1000
 for ( i=1 ; i<limit ; i++ ) {
	if (!(i%3) || !(i%5)) sum += i
 }
 print "sum = "sum
 exit
}
