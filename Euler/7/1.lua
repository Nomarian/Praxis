
function primepos(n)
 local function f(n)
  for i=3,math.floor(math.sqrt(n)),2 do
   if n%i==0 then return false end
  end
  return true
 end

 local p,pn = 13, 6
 local i = p + 2
 local p = 3
 while pn<n do 
  if f(i) then p,pn = i, pn+1 end
  i = i + 2
 end
 print(pn .. ": " .. p )
end

primepos(10001)
