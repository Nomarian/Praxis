\ /usr/bin/env pforth
: findsumofmultiples ( to -- sum )
 0 swap
 1 do
  I 3 mod
  I 5 mod
   *
  0=
  if I + then
 loop
;
 
1000 findsumofmultiples

cr 
." Result: " .
cr

