#!/home/nmz/Run/CLI/lua5.4

function isprimeu(n)
 for i=3,math.floor(math.sqrt(n)),2 do
  if n%i==0 then return false end
 end
 return true
end

function primepos(n)
 local p = n == 1 and 2 or 3
 n = n - p + 1
 while n>0 do
  p = p + 2
  if isprimeu(p) then n = n - 1 end
 end
 return p
end

-- is n prime? t/f
function isprime(n)
 if n<3 then return n==2 end
 if n%2==0 then return false end
 return isprimeu(n)
end

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

function sumofsquares(n)
 return n*(n+1)*(2*n+1)/6
end

function squareofsum(n)
 n=n/2 * (n+1)
 return n*n
end

function lcm(t)
-- unfinished
 local function counter(t)
  local t2 = {} -- n,power
  for k,v in ipairs(t) do
   t2[v] = t2[v] or 0 + 1
  end
 end
 
 for k,v in ipairs(t) do
  counter(primefactors(v))
 end
end

lcm{24,36}
