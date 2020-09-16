/*
Given an array of integers, 
calculate the ratios of its elements that are positive, negative, and zero. 
Print the decimal value of each fraction on a new line with  places after the decimal.

Note: This challenge introduces precision problems. 
The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.
*/

func plusMinus(arr: [Int]) -> Void {
        
    var positive: Double = 0
    var negative: Double = 0
    var zero: Double = 0

    for i in 0..<arr.count {
        if arr[i] > 0 {
            positive += 1
        }
        else if arr[i] < 0 {
            negative += 1
        }
        else {
            zero += 1
        }
    }

    print(positive/Double(arr.count))
    print(negative/Double(arr.count))
    print(zero/Double(arr.count))
}


plusMinus(arr: [-4,3,-9,0,4,1])   // 0.500000  0.333333  0.166667
plusMinus(arr: [1,1,0,-1,-1])     // 0.400000  0.400000  0.200000
