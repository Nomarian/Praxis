
Red []


isprime: func [
 n [integer!]
 /local i limit
 return: [logic!]
] [
; wont test for 2 or 1 or even numbers
; this is a fast isprime finetuned for primepos
 i: 3
 limit: round/floor square-root n
 while [lesser-or-equal? i limit] [
  if equal? 0 mod n i [ return false ]
  i: i + 2
 ]
 return true
]

primepos: func [n [integer!]
 /local p pn
 ] [
 if equal? n 1 [return 2]
 pn: 2 p: 3
 while [lesser? pn n] [
  p: p + 2
  if isprime p [ pn: pn + 1 ]
 ]
 p
]

print primepos 10
; around 14 seconds

