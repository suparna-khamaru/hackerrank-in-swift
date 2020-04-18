//: [Previous](@previous)

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    
   var doneArray: [Int] = [Int]()
   var pairAvailable: Int = 0
        if(n > 0) {
             for i in 0..<n {
                let currentColour = ar[i]
                let currentColourIndex = doneArray.firstIndex(of: currentColour)
                
                if let index = currentColourIndex {
                    pairAvailable = pairAvailable + 1
                    doneArray.remove(at: index)
                }
                else {
                    doneArray.append(currentColour)
                }
            }
        }
        return pairAvailable
}

sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])

