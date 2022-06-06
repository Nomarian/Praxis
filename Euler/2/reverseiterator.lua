#!/usr/bin/env lua

-- benchmark test between functions

p = 4000000 -- problem

print(directable(), os.clock())

-- iterative, direct, globals, table,

-- a limit
function stupiditerator(fn) -- its a reverse iterator. fn(table)
 local n = p
 local i1,i2 = 1,2
 local sum = 0
 while i1 < n do
  fn(i1,i2)
  if i1 % 2 == 0 then sum = sum + i1 end
  i1,i2 = i2, i1 + i2
 end
 print(sum)
end

--]]


