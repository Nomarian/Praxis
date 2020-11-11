#!/usr/bin/awk -f

function reverse(string,	a, i){
 i = split(string,a,"")
 for (string = "";i;) string = string a[i--]
 return string
}

function isPalindrome(s){ # t/f
 return s == reverse(s)
}

function solution(x,s,   y,z,b){ # start, stop
 for (x++;--x>=s;)
  for (y=x+1;--y>=s;)
    isPalindrome( z = x * y ) && z > b && b = z
 return b
}

BEGIN { print solution(999,900) }