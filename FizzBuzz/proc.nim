
proc fizzbuzz(i: int): string =
  return if i mod 15 == 0: "fizzbuzz"
  elif i mod 3 == 0: "fizz"
  elif i mod 5 == 0: "buzz"
  else: $i

for i in countup(1,30):
 echo fizzbuzz(i)