#!/usr/bin/env lua

-- shortcirtuit2
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

-- will just print n+1 to n+15 this avoids comparisons
function ordered(n) -- n should be 0
 local f,b,fb = "fizz","buzz","fizzbuzz"
 print(
  string.format(
  --0 0 1 0 2 1 0 0 1 2 0 1 0 0 3
  "%i\n%i\n%s\n%i\n%s\n%s\n%i\n%i\n%s\n%s\n%i\n%s\n%i\n%i\n%s"
   ,n+1,n+2,f,n+4,b,f,n+7,n+8,f,b,n+11,f,n+13,n+14,fb
  )
 )
end

do
 local limit=math.tointeger(arg[1]) or 20
 local i = 0
 while i+15<limit do
  ordered(i)
  i = i + 15
 end
 if i<limit then
  for i=i,limit do print(fz(i)) end
 end
end

