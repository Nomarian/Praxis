
: fibonacci	( n1 n2 -- n3 n4 )
	2dup
		+
		rot
		drop
;

0	( sum )
: sumifeven 
	dup 2 mod
		0= if				( sum n1 n2 )
			rot			( n1 n2 sum )
				over 	( n1 n2 sum n2 )
				+		( n1 n2 sum )
			-rot			( sum n1 n2 )
		then
;

( sum n1 n2 )
0 1

40 0 do
	dup .
		sumifeven
		fibonacci
		( Limit )
			dup	4000000 >=
			if	leave		then
loop
	
cr	." Sum of evens is: "
	rot .
cr