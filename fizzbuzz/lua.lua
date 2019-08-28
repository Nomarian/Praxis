#!/usr/bin/env lua

function fizzbuzz(n) -- string
 if n % 15 == 0	then return "fizzbuzz" end
 if n % 3 == 0	then return "fizz" end
 if n % 5 == 0	then return "buzz" end
 return n
end

for i=1, 100 do print(fizzbuzz(i)) end
