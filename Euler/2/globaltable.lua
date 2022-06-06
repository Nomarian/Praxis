#!/usr/bin/env lua

-- Uses a table
function solution(p)
 t = { n=p, sum=0, i1=1, i2=2 }
 while t.i1 < t.n do
  if t.i1 % 2 == 0 then t.sum = t.sum + t.i1 end
  t.i1,t.i2 = t.i2, t.i1 + t.i2
 end
 return t.sum
end

p = 4000000 -- problem
print( solution(p), os.clock() )
