
var limit = 1000
var sum = 0
for i in countup(1,limit):
 if ( (i mod 3 == 0) or (i mod 5 == 0) ):
  sum += i

echo "sum = ", sum
 
