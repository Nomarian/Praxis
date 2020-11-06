#!/usr/bin/env lua

function fz(n)
 local d = (
  ( (n % 3 == 0) and "fizz" or "" )
  ..
  ( (n % 5 == 0) and "buzz" or "" )
 )
 return (d == "" and n) or d
end

for i=1,arg[1] or 20 do
 print( fz( i ) )
end
