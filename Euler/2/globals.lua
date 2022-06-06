#!/usr/bin/env lua

-- benchmark test between functions

-- global solution
function solution(p)
 sum,i1,i2 = 0,1,2
 while i1 < p do
  if i1 % 2 == 0 then sum = sum + i1 end
  i1,i2 = i2, i1 + i2
 end
 return sum
end

p = 4000000
print(solution(p), os.clock())
