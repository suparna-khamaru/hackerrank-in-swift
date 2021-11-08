import Foundation

/// Question: https://www.hackerrank.com/challenges/sherlock-and-array/problem 


/*
 * Complete the 'balancedSums' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func balancedSums(arr: [Int]) -> String {
    

// Approach 2
    
// Example 1  -->  [-3, 2, -2, 1, -2]
// sum of all elements in the array = -3+2-2+1-2 = -4 -> sum = -4 
// i=0 -> leftSum = -3 (-3)         && sum = -1 (-4+3 = -1)
// i=1 -> leftSum = -1 (-3+2)       && sum = -3 (-1-2 = -3) -> matched 
// i=2 -> leftSum = -3 (-3+2-2)     && sum = -1 (-3+2 = -1) -> matched 
// i=3 -> leftSum = -2 (-3+2-2+1)   && sum = -2 (-1+1 = 0)
// i=4 -> leftSum = -4 (-3+2-2+1-2) && sum = 0  (0+2 = 2)
    
// Example 2  -->  [1, 2, 3, 3] = 9

//leftSum = 0
// i=0 ->   rightsum = 8 (9-1 = 8)
       
//i=0 ->  	left sum = 0, 		
//		right sum = 8		 (9-1)

//i=1 -> 	 left sum = 1, 		(1)
//		right sum = 6 		(9-1-2)

//i=2 ->   	left sum = 3, 		(1+2)
//		right sum = 3		 (9-1-2-3).      -> matched 

//i=3 ->   	left sum = 6,		(1+2+3)
//	 	right sum = 0		 (9-1-2-3-3)
    
    

    var leftSum = 0
    var rightSum = nums.reduce(0, +)
    var result = [Int]()

    for value in nums.indices {

        rightSum -= nums[value]

        if leftSum == rightSum {
            result.append(value)
        }

        leftSum += nums[value]
    }
    return indices.isEmpty ? "NO" : "YES"
}


// Approach 1  - Brute force

// 0 = 2-2+1-2?     if yes, append index=0
// -3 = -1+1-2?     if yes, append index=1
// -3+2 = 1-2?      if yes, append index=2
// -3+2-2 = -2?     if yes, appened index=3


//     func equilibriumIndex1(nums: [Int]) -> [Int]? {
        
//         guard nums.count > 1 else { return nil }
        
//         var left = 0
//         var right = 0
//         var output = [Int]()
        
//         for i in nums.indices {
            
//             left = 0
//             right = 0
            
//             for j in 0..<i {
//                 left = left + nums[j]
//             }
            
//             for j in i+1..<nums.count {
//                 right = right + nums[j]
//             }
            
//             if left == right { output.append(i) }
//         }
    
//         return output.isEmpty ? nil : output
//     }
    





let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let T = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for TItr in 1...T {
    guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

    let arr: [Int] = arrTemp.split(separator: " ").map {
        if let arrItem = Int($0) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arr.count == n else { fatalError("Bad input") }

    let result = balancedSums(arr: arr)

    fileHandle.write(result.data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}



// arr = [5,6,8,11]     ->  YES
// arr = [1,2,3]        ->  NO
// arr = [1,2,3,3]      ->  YES
