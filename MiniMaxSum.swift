/*
Given five positive integers, 
find the minimum and maximum values that can be calculated by summing exactly four of the five integers. 
Then print the respective minimum and maximum values as a single line of two space-separated long integers.

Example
The minimum sum is arr = 1+3+5+7 = 16 and the maximum sum is 3+5+7+9 = 24. The function prints 16,24
*/


func miniMaxSum(arr: [Int]) -> Void {
        
    let sortedArray = arr.sorted()

    let n = arr.count-1
    var output1 = 0
    var output2 = 0

    for i in 0..<n {
        output1 += sortedArray[n-i]
        output2 += sortedArray[n-i-1]
    }

    print(output2,output1)
}


miniMaxSum(arr: [1,2,3,4,5])        // 10  14
miniMaxSum(arr: [1,3,5,7,9])        // 16  24
miniMaxSum(arr: [7,69,2,221,8974])  // 299 9271
