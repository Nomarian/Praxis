 
30 constant limit

: edgeup cr
	." + "
		limit 2 - 0 do ." - " loop
	." + "
;

: border cr
	." | "
		limit 2 * 4 - spaces
	." | "
;

edgeup

border
limit 1 - 0 do border loop

edgeup
cr
