#!/usr/bin/env lua

function solution(n)
 local sum = 0
 for i=3,n-1 do
  if i%3==0 or i%5==0 then
   sum = sum + i
  end
 end
 return sum
end

print( solution(arg[1] or 1000) )
