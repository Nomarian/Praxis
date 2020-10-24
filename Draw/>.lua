#!/usr/bin/env lua

function spaces (count)
	for start = 0, count do
		io.write(" ")
	end
end

limit	= 100
letter1	= "x"
letter2	= "x"

for tmp = 0, limit do
	spaces (tmp)
		print(letter1)
end

for tmp = limit - 1, 0, -1 do
	spaces (tmp)
		print(letter2)
end
