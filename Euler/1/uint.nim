
var sum = 0'u
for i in 1..1000:
 if ( (i mod 3 == 0) or (i mod 5 == 0) ): sum += i.uint
echo "sum = ", sum
 
