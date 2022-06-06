#!/home/nmz/Run/CLI/lua5.4

-- TODO
-- lcm (using prime factors)
-- isprime using a table (slow apparently?)
-- Iterators
 -- factors, primefactors

function factors(n) -- Returns a list of factors
 local t,limit = {{1,n}},math.floor(math.sqrt(n))
 for i=2,limit do
  if n%i==0 then
   t[#t+1] = {i,math.ceil(n/i)}
  end
 end
 return t
end

function isprimeu(n)
 for i=3,math.floor(math.sqrt(n)),2 do
  if n%i==0 then return false end
 end
 return true
end

function primepos(n)
 local p = n == 1 and 2 or 3
 n = n - p + 1 -- we roll back n until it reaches 0
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

-- print prime factors
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

function primefactors(n) -- returns table of prime factors
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

-- print prime factors using primefactors()
function ppprimefactors(n)
 io.write(n .. " = ")
 local t = primefactors(n)
 for i=2,#t do io.write(t[i-1] .. " x ") end
 print(t[#t])
end

-- will sum all the squares
function sumofsquares(n)
 return n*(n+1)*(2*n+1)/6
end

function squareofsum(n)
 n=n/2 * (n+1)
 return n*n
end

-- Will return the nth fibonacci number (not good for repetitions)
-- straightforward, non-recursive
function fib(n)
 local sum i1,i2 = 0, 1, 2
 while i1 < n do
  if i1 % 2 == 0 then sum = sum + i1 end
  i1,i2 = i2, i1 + i2
 end
 return sum
end


-- Fibonacci Iterator
-- Return fibonacci position and number
-- nil,limit if you want to stop at a number
-- pos,nil if you want the nth fibonacci instead
-- pos,limit if you want to stop at whichever
function fibi(pos,limit) -- pos, number
 local function nextfib(t)
  t.a,t.b = t.b, t.a + t.b
  return t.b
 end

 local function f1(t,i)
  if i<pos then return i+1,nextfib(t) end
  return nil
 end

 local function f2(t,i)
  if nextfib(t)<limit then return i+1,t.b end
  return nil
 end

 local function f0(t,i)
  if i<pos and t.b<limit then
   t.a,t.b = t.b, t.a + t.b
   return i+1,t.b
  end
  return nil
 end
 
 -- pos,limit = pos or true,limit or true
 -- just use f0?
 
 local f = (pos and limit and f0) or (pos and f1) or (limit and f2)
 return f,{a=0,b=1},0
end

-- converts a table of multipliers (sorted) to powers as in 2^2,3^1
function topowers(t)
 local keep = {}
 for i=1,#t do
  keep[ t[i] ] = (keep[ t[i] ] or 0) + 1
 end
 return keep
end

-- this uses the primefactor multiplication method
function lcm(t) -- returns a number
  local keep = topowers( primefactors( t[1] ) )
  
  for i=2,#t do -- loop through the rest
    for num,pow in pairs( topowers( primefactors( t[i] ) ) ) do
      if keep[num] then -- number is in keep table
        if keep[num] < pow then -- bigger power, updating
          keep[num] = pow 
        end
      else -- num is not in keep, saving
        keep[num] = pow
      end
    end
  end
  
  local z = 1
  for num,pow in pairs(keep) do z = z * num ^ pow end
  return math.floor(z)
end

---------------------------------------------------

primes = {2,3,5,7,11,13,17,19}

-- checks if its prime but using primelist
-- will also fill the prime list as required
function isprimet(n) -- t/f if its prime
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
