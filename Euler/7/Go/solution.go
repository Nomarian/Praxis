
package main

import (
	"fmt"
	"math"
)

func isoddprime(oddnum uint) bool {
	var limit = uint(math.Floor(math.Sqrt(float64(oddnum))))
	for i := uint(3);i <= limit;i+=2 {
		if oddnum%i==0 {
			return false
		}
	}
	return true
}

func primepos(pos uint) uint {
	var prime uint = 3
	if pos==1 {
		prime = 2
	}
	pos -= prime - 1
	for pos>0 {
		prime += 2
		if isoddprime(prime){
			pos -= 1
		}
	}
	return prime
}

func main() {
	fmt.Print( primepos(10001) )
}
