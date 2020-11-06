#!/usr/bin/lua5.3

--[[
 jit	3s
  ipairs 1.6
 5.1	7s
 5.2	7s
 5.3	11s
  ipairs 10.8
 5.4	9s
  ipairs 9s
--]]

-- Returns summation of all prime numbers till n
function summation(n)
 a = {}

 local function f(n)
  local limit = math.floor(math.sqrt(n))

  for k,v in ipairs(a) do
   if v > limit		then return true end
   if n % v == 0	then return false end
  end

  return true
 end

 local sum = 2
 for i=3,n,2 do
  if f(i) then
   sum = sum + i
   a[#a+1] = i
  end
 end

 return sum
end

print( summation(2000000) )
