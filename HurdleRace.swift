import Foundation

func hurdleRace(k: Int, height: [Int]) -> Int {

    var m = height.sorted()
    var result = 0
    var lastIndex = m.count-1
    
    if m[lastIndex] - k >= 0 {
        result = m[lastIndex] - k
    }
    return result
}

print(hurdleRace(k: 4, height: [1,6,3,5,2]))       //2
print(hurdleRace(k: 7, height: [2,5,4,5,2]))       //0
print(hurdleRace(k: 1, height: [1,2,3,3,2]))       //2
