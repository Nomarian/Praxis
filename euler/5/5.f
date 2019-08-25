

1	constant GO
10	constant limit

: loopie 
begin
	dup 0<	( in case we reach negative numbers )
	if ." i just had to leave " leave then
	
	1+ ( N )
	
	0 swap ( remainder N )
	
	limit 1+ go do	( remainder N )
		dup I mod	( remainder N product )
		rot +	( N remainder )
		swap
		
		over 0 < if leave then
		
	loop
	
	swap
	0=
until

. ." is divisible from " go . ." to " limit .
;


: p
        0 begin
                dup
                20 2 do
                        dup i /mod drop if
                                drop 0
                        then
                loop
                0= while
                        20 +
        repeat . ;

p


( 0 loopie gforth 4 mins pforth would take forever )

cr cr
bye