#!/usr/bin/awk -f


BEGIN {
 al["A"]= "Y"; al["B"]= "P"; al["C"]= "L"; al["D"]= "T"; al["E"]= "A";
 al["F"]= "V"; al["G"]= "K"; al["H"]= "R"; al["I"]= "E"; al["J"]= "Z";
 al["K"]= "G"; al["L"]= "M"; al["M"]= "S"; al["N"]= "H"; al["O"]= "U";
 al["P"]= "B"; al["Q"]= "X"; al["R"]= "N"; al["S"]= "C"; al["T"]= "D";
 al["U"]= "I"; al["V"]= "J"; al["W"]= "F"; al["X"]= "Q"; al["Y"]= "O";
 al["Z"]= "W"; al["a"]= "y"; al["b"]= "p"; al["c"]= "l"; al["d"]= "t";
 al["e"]= "a"; al["f"]= "v"; al["g"]= "k"; al["h"]= "r"; al["i"]= "e";
 al["j"]= "z"; al["k"]= "g"; al["l"]= "m"; al["m"]= "s"; al["n"]= "h";
 al["o"]= "u"; al["p"]= "b"; al["q"]= "x"; al["r"]= "n"; al["s"]= "c";
 al["t"]= "d"; al["u"]= "i"; al["v"]= "j"; al["w"]= "f"; al["x"]= "q";
 al["y"]= "o"; al["z"]= "w"
}

function char2albhed(c,x){
 x=al[c]
 return x ? x : c
}

function string2albhed(s,	a,len,y,z,i){
 z = length(s)
 for (i=1;i<=z;i++)
  y = y char2albhed( substr(s,i,1) )
 return y
}

BEGIN {
 if (ARGC>1){ # ARGV starts at 2
  printf string2albhed( ARGV[1] )
  for ( i=2;i<ARGC;i++ )
   printf("%s%s",OFS, string2albhed( ARGV[i] ) )
  print ""
  exit
 }
}

{ $0 = string2albhed($0) }
1
