#!/usr/bin/lua5.3

-- find prime factors of a number

-- first try
function factors1(n) -- Returns a list of factors
 local t = {{1,n}}
 local x = n
 for i=2,n do
  if n%i==0 then
   x = math.ceil(n/i)
   t[#t+1] = {i,x}
   if x<=i then break end
  end
 end
 return t
end

-- second try
function factors2(n) -- Returns a list of factors
 local t,x,i = {{1,n}},n,2
 while i<x do
  x = math.ceil(n/i)
  if n%i==0 then
   t[#t+1] = {i,x}
  end
  i = i + 1
 end
 print("\t<" .. i..">")
 return t
end

-- uses sqrt instead
function factors3(n) -- Returns a list of factors
 local t,limit = {{1,n}},math.floor(math.sqrt(n))
 for i=2,limit do
  if n%i==0 then
   t[#t+1] = {i,math.ceil(n/i)}
  end
 end
 return t
end

factors = factors3

function testFactors(n)
 for x=1,n do print(x)
  for k,v in pairs(factors(x)) do
   print("\t" .. v[1] .. "x" .. v[2])
  end
 end
end

-- super easy, super smaht (and should be correct)
function isprime1(n)
 return #factors(n) == 1
end

-- basically factors() but fine tuned for primes
function isprime2(n)
 if n==1 then return false end
 if n==2 or n==3 or n==5 or n==7 or n==11 or n==13 then return true end
 if n%2==0 then return false end
 
 for i=3,math.floor(math.sqrt(n)),2 do
  if n%i==0 then return false end
 end
 return true
end

-- same as isprime2 but with a finely tuned loop
-- but it seems to be slower? or not worth it?
function isprime3(n)
 if n==1 then return false end
 if n==2 or n==3 or n==5 or n==7 or n==11 or n==13 then return true end
 if n%2==0 or n%3==0 or n%5==0 or n%7==0 or n%11==0 or n%13==0 then
  return false
 end

 local limit,i = math.floor(math.sqrt(n)),15
 while i<limit do
  for a=1,4 do -- this might be useful in some other place
   i = i + 2
   if n%i==0 then return false end
  end
  i = i + 2
 end
 return true
end
-- probably slow because there's only 3 expressions, until n%5
-- I imagine with an OLD CPU this should be faster

primes = {2,3,5,7,11,13,17,19}

 -- better to hunt normally for the first 100 numbers, then go with the sophisticated loop?

-- checks if its prime but using primelist
-- will also fill the prime list as required
function isprimebutdb(n) -- t/f if its prime
 if n==1 then return false end
 local limit = math.ceil( math.sqrt(n) )
 for k,v in pairs(primes) do
  if v==n then return true end
  if n%v==0 then return false end
  if v > limit then return true end
 end
 -- n is too big for prime hunt, fill primes until limit is reached

 local function notinlist(z)
  local limit = math.ceil( math.sqrt(z) )
  for i,v in ipairs(primes) do
   if z%v==0 then return false end
   if v > limit then return true end
  end
 end
 
 local i = primes[#primes]
 repeat
  i = i + 2
  if notinlist(i) then
   primes[#primes + 1] = i
   if n%i==0 then return true end -- prime check
  end
 until i > limit
 return false -- not divisible by new primes so its false 
end

function blah(n)
 local limit = math.ceil( math.sqrt(n) )
 for k,v in pairs(primes) do
  if n%v==0 then return false end
  if v > limit then return true end
 end
end

-- fills primedb with n amount of primes
function primefiller(n)
 local i = primes[#primes] + 2
 while #primes<=n do
  if isprime2(i) then primes[#primes + 1] = i end
  i = i + 2
 end
end

function primepos(n)
 local function f(n)
  for i=3,math.floor(math.sqrt(n)),2 do
   if n%i==0 then return false end
  end
  return true
 end

 local p,pn = 13, 6
 local i = p + 2
 while pn<n do 
  if f(i) then p,pn = i, pn+1 end
  i = i + 2
 end
 print(pn .. ": " .. p )
end

primepos(10001)

-- print(#primes)
--for k,v in pairs(primes) do print(v) end
