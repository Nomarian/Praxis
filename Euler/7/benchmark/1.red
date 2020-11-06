#!/usr/bin/env red-stable

Red []

; wont test for 2 or 1 or even numbers
isprimeOdd: func [
 n [integer!]
 /local i limit
 return: [logic!]
] [
 i: 3
 limit: round/floor square-root n
 while [lesser-or-equal? i limit] [
  if equal? 0 mod n i [ return false ]
  i: i + 2
 ]
 return true
]

; wont test for 2 or 1 or even numbers
isPrime: func [
 n [integer!]
 return: [logic!]
] [
 if lesser? n 3 [ return equal? n 2 ]
 if zero? mod n 2 [ return false ]
 return isprimeOdd n
]

primepos: func [n [integer!]
 /local p
] [
 if equal? n 1 [return 2]
 n: n - 1
 p: 1
 while [greater? n 0] [
  if isprimeOdd p: p + 2 [ n: n - 1 ]
 ]
 return p
]

primepos 10001
