#!/usr/bin/env lua

--[[
function sumofsquares(n)
 local x = 0
 for i=1,n do x = x + i*i end
 return x
end

function squareofsum(n)
 for i=1,n-1 do n = n+i end
 return n
end

function squareofsum(n)
 local x = 0
 for i=1,n do x = x+i end
 return x*x
end

function solution2(n)
 local x,y = 0,0
 for i=1,n do
  x = (x+i*i)
  y = y+i
 end
 return y*y - x
end

--]]

function sumofsquares(n)
 return n*(n+1)*(2*n+1)/6
end

function squareofsum(n)
 n=n/2 * (n+1) 
 return n*n
end

function solution(n)
 local x=n/2 * (n+1) 
 return x*x - (n*(n+1)*(2*n+1)/6)
end

print( string.format("%i\n------",solution(100)) )

