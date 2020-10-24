
\ sum only 3 or 5
: checker ( n -- b ) dup 3 mod 0= swap 5 mod 0= or ;

\ increases n1 if b is true
: scorekeeper ( n0 b n1 -- n2 ) swap if + dup then drop ;

: pureloop ( n1 -- n2 ) 0 swap 1 do i checker i scorekeeper loop ;
: findsum ( n -- ) pureloop . cr ;

1000 findsum
bye