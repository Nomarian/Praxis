#!/usr/bin/env lua

function isPalindrome(s) -- t/f
 s = tostring(s)
 return s == string.reverse(s)
end

function solution(x,s) -- start, stop
 local b = 0
 for x=x,s,-1 do
  for y=x,s,-1 do
    z = x * y
    if isPalindrome( z ) and z > b then
     b = z
    end
  end
 end
 return b
end

print( solution(999,900) )
-- solution looks recursive. but I'm not sure