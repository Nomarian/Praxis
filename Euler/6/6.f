
: limit
	0
	SWAP 1 + 0 
;

: sumofsquare
	limit
	DO
		I DUP * + 
	LOOP 
;

: squareofsum 
	limit
		DO
			I +
		LOOP 
	DUP *
;

: difference
	DUP SQUAREOFSUM
	SWAP SUMOFSQUARE
	-
;

100 difference .