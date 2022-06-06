#[

returns a list containing prime factors
function pprimefactors(n)
 if n == 1 then print(n);return n end
 io.write(n .. " = ")
 local c = 0
 while not isprime(n) do
  c = c + 1
  local p = primepos(c)
  if n % p == 0 then
   io.write(p .. " x " )
   n = math.floor(n / p)
   c = 0
  end
 end
 print(n)
end

function primefactors(n)
 local a,c = {},1
 if n > 1 then
  while not isprime(n) do
   p,c = primepos(c),c+1
   if n % p == 0 then
    a[#a+1],c,n = p,1, math.floor(n / p)
   end
  end
 end
 a[#a+1] = n
 return a
end

function ppprimefactors(n)
 io.write(n .. " = ")
 local t = primefactors(n)
 for i=2,#t do io.write(t[i-1] .. " x ") end
 print(t[#t])
end

print"-----"
--ppprimefactors(13195)
--ppprimefactors(600851475143)


]#

# this should be uint

import math

# isprimeuneven, because we just need to test uneven numbers
proc isprimeu(n: int): bool =
 for i in countup( 3, toint( floor( sqrt( tofloat(n)  ) ) ), 2):
  if (n mod i == 0): return false
 return true

#
# is n prime? t/f
proc isprime(n: int): bool =
 if n==2: return true
 if ( (n<2) or (n mod 2==0) ): return false
 return isprimeu(n) # isprimeu(n)


proc primepos(n: int): int =
 var p = if n==1: 2 else: 3
 var n = n - p + 1

 while n>0:
  p += 2
  if isprimeu(p): n -= 1
 return p

echo primepos(5)