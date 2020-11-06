
: SQRT 0 SWAP 0 DO 1 + DUP 2* 1 + +LOOP ; 

: f ( n1 -- t/f )
 -1 over
 sqrt 3 do ( n1 )
  dup i mod 0= if 1 break then
 2 +loop
 +
;

: stuff 5 SQRT . ." Dello" cr ;
stuff
BYE
