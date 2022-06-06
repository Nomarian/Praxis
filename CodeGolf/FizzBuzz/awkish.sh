seq 100|awk '$0=(x=($0%3?z:"fizz")($0%5?z:"buzz"))?x:$0'
#seq 100|awk '$0=(x=((y=$0)%3?z:"fizz")(y%5?z:"buzz"))?x:y'
#seq 100|awk '$0=NR%15?NR%5?NR%3?$0:"Fizz":"Buzz":"FizzBuzz"'
# imagine if you could use the ternary operator as lua does
# so a "?" is an and, and a : is an or
# turning the first approach into 
# seq 100|awk '$0=($0%3:"fizz")($0%5:"buzz"):$0'

