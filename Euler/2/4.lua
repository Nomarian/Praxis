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
