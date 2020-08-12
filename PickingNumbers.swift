import Foundation

func pickNumbers(b: [Int]) -> Int {
    
    var a = b.sorted()
    
    var count = 1
    var result = 0
    var firstElement = a[0]
    
    for i in 1...a.count-1 {
        if (firstElement == a[i] || firstElement + 1 == a[i]) {
            count += 1
        }
        else {
            if (count > result) { result = count }
            count = 1
            firstElement = a[i]
        }
    }
    if (count > result) { result = count }
    return result
}

print(pickNumbers(b: [1, 1, 2, 2, 4, 4, 5, 5, 5]))  //5
print(pickNumbers(b: [4,6,5,3,3,1]))                //3
print(pickNumbers(b: [1,2,2,3,1,2]))                //5
print(pickNumbers(b: [0,3,5,7,9,0,1]))              //3
