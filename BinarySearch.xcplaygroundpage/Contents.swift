//: [Previous](@previous)

import Foundation

//Divide & Conquer

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    
func binarySearch(in numbers: [Int],
                  for value: Int) -> Int? {
    var left = 0
    var right = numbers.count-1
    
    while left <= right {
        let middle = (left+right)/2
        
        if numbers[middle] < value {
            left = middle + 1
        }
        else if numbers[middle] > value {
            right = middle - 1
        }
        else {
            return middle
        }
    }
    return nil
}

print(binarySearch(in: numbers, for: 7))
print(binarySearch(in: numbers, for: 23))
print(binarySearch(in: numbers, for: 13))
