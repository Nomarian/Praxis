#!/usr/bin/env lua

function fz(n)
 return (
   ( (n % 15 == 0) and "fizzbuzz")
  or
   ( ( n % 3 == 0 ) and "fizz" )
  or
   ( ( n % 5 == 0 ) and "buzz" )
  or
   n
 )
end

for i=1,arg[1] or 20 do
 print( fz( i ) )
end
