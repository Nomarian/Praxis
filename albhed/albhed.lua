#!/usr/bin/env lua
-- uses arg, if arg is 0 then it uses stdin
--    A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
--    Y P L T A V K R E Z G M S H U B X N C D I J F Q O W

al = {
 A= "Y", B= "P", C= "L", D= "T", E= "A", F= "V", G= "K",
 H= "R", I= "E", J= "Z", K= "G", L= "M", M= "S", N= "H",
 O= "U", P= "B", Q= "X", R= "N", S= "C", T= "D", U= "I",
 V= "J", W= "F", X= "Q", Y= "O", Z= "W",
 a= "y", b= "p", c= "l", d= "t", e= "a", f= "v", g= "k",
 h= "r", i= "e", j= "z", k= "g", l= "m", m= "s", n= "h",
 o= "u", p= "b", q= "x", r= "n", s= "c", t= "d", u= "i",
 v= "j", w= "f", x= "q", y= "o", z= "w"
} 

function albhed(s)
 s = string.gsub(s,"[A-Za-z]",al)
 return s
end

if #arg==0 then
 for line in io.lines() do
  print( albhed(line) )
 end
else

 local OFS=" "
 io.write( albhed( arg[1] ) )
 for i=2,#arg do
  io.write( OFS .. albhed( arg[i] ) )
 end
 print()

end
