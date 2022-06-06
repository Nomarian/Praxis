
-- find prime factors of a number
-- find primes

print"--------"

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
function factors(n) -- Returns a list of factors
 local t,limit = {{1,n}},math.floor(math.sqrt(n))
 for i=2,limit do
  if n%i==0 then
   t[#t+1] = {i,math.ceil(n/i)}
  end
 end
 return t
end

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

function isprime2(n)
 if n==1 then return false end
 if n==2 or n==3 or n==5 or n==7 then return true end
 if n%2==0 then return false end
 
 local limit = math.floor(math.sqrt(n))
 for i=3,limit,2 do
  if n%i==0 then return false end
 end
 return true
end

-- isprime2 should be like factors, but
--  return false on divisibility
print(isprime1(9977))

function primesearchusingfactors(n)
 for i=2,n do
  if #factors(i) == 1 then
   print(i)
  end
 end
end

-- primesearchusingfactors(10000)

primes = {2,3,5,7,11,13,17,19}

-- a fast prime search should be recursive. good for the first 1000 numbers maybe?

-- this is a leap prime search, that is, it assumes, that the next prime
-- is whatever comes next after the last prime + 2

--[[
-- checks if its prime but using primelist
function issmallprime(n) -- t/f if its prime
 if n==1 then return false end
 local limit = math.ceil( math.sqrt(n) )
 -- checks using primelist
 for k,v in pairs(primes) do
  if v==n then return true end
  if n%v==0 then return false end
  if v > limit then return true end
 end

end

 -- you should be able to use isprime because of the limit

function tester()
 for i=1,30 do
  io.write(i .. " ")
  print( isprime(i) )
 end
end

-- finds the nextprime for prime list
function nextprime()
 local i=primes[#primes] + 2,
 repeat
  i = i + 2
 until isprimeinprimelist(i)
end

-- checks if its prime but using primelist
function isprimeprime(n) -- t/f if its prime
 if n==1 then return false end
 if n <= primes[#primes] then
  for k,v in pairs(primes) do
   if v==n then return true end
   if n%v==0 then return false end
  end
 end
 return false
end





-- can probably check if its prime by having 2 nested for loops
-- or even recursion
]]
