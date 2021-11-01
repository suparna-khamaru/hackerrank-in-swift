import Foundation

/*
 * Complete the 'balancedSums' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func balancedSums(arr: [Int]) -> String {
    
    
    var indices = [Int]()
    
    var leftSum = 0
    var sum = arr.reduce(0, +)
    
    for i in arr.indices {
        sum = sum - arr[i]
        
        if leftSum == sum {
            indices.append(i)
        }
        leftSum = leftSum + arr[i]
    }
    return indices.isEmpty ? "NO" : "YES"
}










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
