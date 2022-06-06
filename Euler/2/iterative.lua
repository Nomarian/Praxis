#!/usr/local/bin/lua5.4

function ifib()
 local function loop(t)
  t[1],t[2] = t[2],t[1]+t[2]
  return t[2]
  -- this makes so little sense, t is a local parameter to loop
  -- so when it exits, state should be lost!
 end

 return loop,{0,1}
end

function solution(n)
 local sum = 0
 for a in ifib() do
  if a > n then break end
  if a % 2 == 0 then sum = sum + a end
 end
 return sum
end

p=4000000
print( solution(p), os.clock() )
