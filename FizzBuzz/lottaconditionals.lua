#!/usr/bin/env lua

function fz(n) -- string
 if n % 15 == 0	then return "fizzbuzz" end -- lcm(3,5)
 if n % 3 == 0	then return "fizz" end
 if n % 5 == 0	then return "buzz" end
end

for i=1,arg[1] or 20 do
  print( fz( i ) )
end
