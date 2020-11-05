
program euler1;
var
 sum: cardinal = 0;
 i: integer;
begin
 for i := 3 to 999 do
   if ((i mod 3 = 0) or (i mod 5 = 0) ) then
    sum := sum + i;
 writeln(sum);
end. 
