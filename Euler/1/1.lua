
--[[

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

--]]

function solution(n)
 local sum = 0
 for i=3,n-1 do
  if i%3==0 or i%5==0 then
   sum = sum + i
  end
 end
 return sum
end

print( solution(arg[1] or 1000) )
