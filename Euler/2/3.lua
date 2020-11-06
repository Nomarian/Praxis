#!/usr/bin/env lua
-- using a global (why? idk?)

-- c means that i1 is the nth fibonacci
-- i1,i2 is fibonacci items
c,i1,i2 = 1,1,2

function solution(n)
 local sum = 0
 while i1 < n do
  if i1 % 2 == 0 then sum = sum + i1 end
  c,i1,i2 = c+1, i2, i1 + i2
 end
 return sum
end

print(solution(4000000))
