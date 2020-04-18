//: [Previous](@previous)

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if(v1>v2) {
        let reminder = (x2-x1)%(v1-v2)
        if (reminder == 0){
            return "YES"
        }
    }
    return "NO"
}

print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2))
print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3))
