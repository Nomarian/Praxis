
15 constant limit

: draw ." x " ;


limit 0 do I loop

dup 2 + spaces draw cr

limit 0 do
	1 + spaces draw I
	I + spaces draw cr
loop

limit 2 + 0 do draw loop

cr
