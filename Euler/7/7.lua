#!/usr/bin/lua5.3

-- Returns primeposition, primenumber
function primepos(n)
 local function f(n)
  for i=3,math.floor(math.sqrt(n)),2 do
   if n%i==0 then return false end
  end
  return true
 end

 local p,pn = 3, 2
 while pn<n do
  p = p + 2
  if f(p) then pn = pn+1 end
 end
 return pn,p
end

print( string.format("%i: %i",primepos(10001) ) )
