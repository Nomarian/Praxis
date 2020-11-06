#!/usr/bin/env tclsh

set f [open /dev/stdin r]

while { [gets $f line] > 0 } {
 if {$line % 15==0} {
  set line fizzbuzz
 } elseif {$line % 3 == 0} {
  set line fizz
 } elseif {$line % 5 == 0} {
  set line buzz
 }
 puts $line
}
