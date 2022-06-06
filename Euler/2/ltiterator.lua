#!/usr/local/bin/lua5.4

function ifib()
 local t = {0,0,1} -- position, data, data
 local function loop()
  t = {t[1]+1,t[3],t[2]+t[3]}
  return t[1],t[3]
 end
 return loop,t
end

function solution(n)
 local sum = 0
 for i,a in ifib() do
  if a > n then break end
  if a % 2 == 0 then sum = sum + a end
 end
 return sum
end

print( solution(4000000) )
