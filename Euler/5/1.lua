#!/usr/bin/lua

dofile"../math.lua"

-- This is basically lcm

-- Does exactly what project euler says to do
-- really brute force
function solution1(x)
  -- check if n is divisible by the numbers starting from from 2 to x
  local function divisibility(n)
    for i=2, x do
      if (n % i)>0 then return false end
    end
    return true
  end
  
-- What number is evenly divisible by all numbers from b to c
 local i=1
 repeat
  i = i + 1
 until divisibility(i)
 return i
end

z = {}
for x=1,20 do table.insert(z,x) end

print( lcm(z) )