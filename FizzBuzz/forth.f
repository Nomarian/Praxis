
: fizz?		3 mod 0= ;
: buzz?		5 mod 0= ;
: fizz!		if ." fizz" then ;
: buzz!		if ." buzz" then ;

: fizzbuzz!
  1+ 1 do
	I fizz?
	I buzz?
	 or if
		I fizz? fizz!
		I buzz? buzz!
	 else
		I .
	 then
	cr
  loop
;


100 fizzbuzz!
bye
