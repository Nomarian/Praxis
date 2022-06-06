#!/usr/bin/env lua

-- benchmark test between functions

p = 4000000 -- problem

print(directable(), os.clock())

-- iterative, direct, globals, table,

-- Will return nth fibonacci number
function getfibpos(n)
 local a,b = 1,2
 for i=1,n-1 do
  a,b = b, a + b
 end
 return a
end

-- will return the nth fibonacci number
function dumb(n)
 local i,sum,f = 1,0,1
 while f < n do
  i,f = i + 1, getfibpos(i)
  if f % 2 == 0 then sum = sum + f end
 end
 print(sum)
end

solutions = {direct, dumb, iterative, }
-- using a global (why? idk?)

-- c means that i1 is the nth fibonacci
-- i1,i2 is fibonacci items
c,i1,i2 = 1,1,2

function solution(n)
 local sum = 0
 while i1 < n do
  if i1 % 2 == 0 then sum = sum + i1 end
  c,i1,i2 = c+1, i2, i1 + i2
 end
 return sum
end

print(solution(4000000))
#!/usr/bin/env lua

-- we aren't looking for nth fibonacci but
-- a limit

 -- will return fibonacci position and number
 -- nil,limit if you want to stop at a number
 -- pos,nil if you want the nth fibonacci instead
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

function solution(n)
 local sum = 0
 for pos,n in fibi(nil,n) do
  if n % 2 == 0 then
   sum = sum + n
  end
 end
 print(sum)
end

solution(4000000)


function ifib()
 a,b = 0,1

end
print"---"
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


-- direct solution
function stupiditerator(fn) -- its a reverse iterator. fn(table)
 local n = p
 local i1,i2 = 1,2
 local sum = 0
 while i1 < n do
  fn(i1,i2)
  if i1 % 2 == 0 then sum = sum + i1 end
  i1,i2 = i2, i1 + i2
 end
 print(sum)
end

--]]


