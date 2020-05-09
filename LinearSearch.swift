import Foundation

//Brute Force

let numbers = [12, 5, 1, 17, 11, 3, 27, 19, 23]
    
func linearSearch(in numbers: [Int],
                  for value: Int) -> Int {
    
    for item in 0..<numbers.count where numbers[item] == value {
        return item
    }
    return -1
}

print(linearSearch(in: numbers, for: 17)) //3
print(linearSearch(in: numbers, for: 23)) //8
print(linearSearch(in: numbers, for: 3))  //5
