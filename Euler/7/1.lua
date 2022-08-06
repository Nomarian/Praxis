#!/usr/bin/env lua

local function getprimepos(pos) -- positive only
	local function isoddprime(oddprime) -- wont test even numbers
		for i=3,math.floor(math.sqrt(oddprime)),2 do
			if oddprime%i==0 then
				return false
			end
		end
		return true
	end
	local prime = pos==1 and 2 or 3 -- starting prime
	pos = pos - (prime - 1)
	while pos>0 do
		prime = prime + 2
		if isoddprime(prime) then
			pos = pos - 1
		end
	end
	return prime
end

print(getprimepos(10001))