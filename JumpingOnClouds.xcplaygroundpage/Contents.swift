//: [Previous](@previous)

import Foundation


//Optimised solution
func jumpOnClouds(c: [Int]) -> Int {
    var counter = -1
    let length = c.count
    var i = 0
    
    while i < length {
        if((i+2 < length) && (c[i+2] == 0)){
            i += 1
        }
        i += 1
        counter += 1
    }
    return counter
}
print(jumpOnClouds(c: [0,0,0,0,1,0]))
print(jumpOnClouds(c: [0,0,1,0,0,1,0]))
print(jumpOnClouds(c: [0,0,0,1,0,0]))

