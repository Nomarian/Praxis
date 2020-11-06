#!/usr/bin/lua5.3
-- 7 seconds

-- Returns summation of all prime numbers till n
function summation(n)
 local function f(n)
  for i=3,math.floor(math.sqrt(n)),2 do
   if n%i==0 then return false end
  end
  return true
 end

 local sum = 2
 for i=3,n,2 do
  if f(i) then sum = sum + i end
 end
 return sum
end

print( summation(2000000) )
