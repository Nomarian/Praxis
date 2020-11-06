#!/usr/bin/env lua

-- direct solution
function solution(n)
 local i1,i2 = 1,2
 local sum = 0
 while i1 < n do
  if i1 % 2 == 0 then sum = sum + i1 end
  i1,i2 = i2, i1 + i2
 end
 print(sum)
end

solution(4000000)
