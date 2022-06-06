#!/usr/bin/env lua

local limit = 30

local edgeup
do
	local t = {"+"}
	for i=1, limit - 2 do t[i+1] = "-" end
	t[limit] = "+"
	edgeup = table.concat(t)
end

local border = string.format("|%".. (limit-1) .."s","|")

print( edgeup )
print( border )
for i=math.floor(limit/2),limit-1 do print(border) end
print( edgeup )
