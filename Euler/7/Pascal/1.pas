{$mode objfpc}{$H+}{$J-} // Just use this line in all modern sources

program MyProgram; // Save this file as myprogram.lpr
uses math;

function isoddprime(oddnum:cardinal): boolean;
var
	limit : integer;
	i : integer;
begin
	limit := floor(sqrt(oddnum));
	i := 3;
	while i<=limit do
	begin
		if (oddnum mod i) = 0 then
			Exit(false);
		i+=2;
	end;
	Exit(true);
end;

function primepos(pos:cardinal): cardinal;
var
	prime : cardinal;
begin
	prime := 3;
	if pos = 1 then
		prime := 2;
	pos -= prime - 1;
	while pos>0 do
	begin
		prime += 2;
		if isoddprime(prime) then
			pos -= 1;
	end;
	Exit(prime);
end;

begin
 writeln(primepos(10001));
end.