/*
https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
*/


// Approach 1

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var counter = 0
    var step = 0
        
    for i in 0..<n {
        for j in step..<n {
            if i != j && (((ar[i] + ar[j])%k) == 0) {
                counter += 1
            }
        }
        step += 1
    }
    return counter
}

print(divisibleSumPairs(n: 6, k: 5, ar: [1,2,3,4,5,6]))  // 3
print(divisibleSumPairs(n: 6, k: 3, ar: [1,3,2,6,1,2]))  // 5
