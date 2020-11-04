#!/usr/bin/env r3

REBOL []

main: func [arg [integer!]] [
 sum: 0
 repeat i arg [
   if any [
    zero? mod i 3
    zero? mod i 5
   ] [
    sum: sum + i
   ]
 ]
 sum
]

print main 1000
quit
