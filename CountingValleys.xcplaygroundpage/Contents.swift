//: [Previous](@previous)

import Foundation

func countingValleys(n: Int, s: String) -> Int {
    var valley = 0
    var counter = 0
    var reachGround = true
    for step in s{
        
        if(step == "U"){
            counter += 1
        }
        else{
            counter -= 1
        }
        
        if(counter < 0 && reachGround){
            valley = valley + 1
            reachGround = false
        }
        
        if(counter == 0){
            reachGround = true
        }
    }
    return valley
}

countingValleys(n: 8, s: "UDDDUDUU")
//countingValleys(n: 12, s: "DDUUDDUDUUUD")

