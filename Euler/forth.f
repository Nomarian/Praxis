
cr

: isprime ( n -- n%7 n%3 )
 dup 
  3 mod
 swap
  7 mod
; \ this only looks for numbers ending in 1 3 7 9

: isprime? ( nf nf -- f )
 0> swap 0> and
;

: prime? ( n -- f )
 dup 
  3 mod
   0> 
 swap
  7 mod
   0>
   and
; \ this only looks for numbers ending in 1 3 7 9

: .prime ( n f -- )
 if . ." is prime" cr else drop then
;

: .prime ( n f -- )
 if . else drop then
;

\ 10 mod replace with possible binary magic?
: nextN ( n -- N+2or4 )
 10 mod
  3 =
  if 4
  else 2
 then
;

: tprime dup prime? .prime ;

: findprimes ( to from -- )
 do
  I prime?
   I swap .prime
  I nextN
 +loop
; \ both numbers should end with 1 3 7 9
\ they cannot be less than 7, because those break the pattern

: sayfirstones 2 . 3 . 5 . 7 . ;

sayfirstones
11111 9 findprimes
cr
bye