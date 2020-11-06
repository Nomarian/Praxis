#!/usr/bin/env lua

-- will return the nth fibonacci number
function fibl(n)
 local a,b = 1,2
 for i=1,n-1 do
  a,b = b, a + b
 end
 return a
end

function solution(n)
 local i,sum,f = 1,0,1
 while f < n do
  i,f = i + 1, fibl(i)
  if f % 2 == 0 then sum = sum + f end
 end
 print(sum)
end

solution(4000000)
