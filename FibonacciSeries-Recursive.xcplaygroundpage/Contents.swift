//: [Previous](@previous)

import Foundation

//Dynamic Programming
func fibonacci (n: Int) -> Int {
        if(n<2) {
            return n
        }
        return fibonacci(n: n-1) + fibonacci(n: n-2)
}
//Time complexity = O[2^n]

print(fibonacci(n: 5))
print(fibonacci(n: 17))
print(fibonacci(n: 12))

