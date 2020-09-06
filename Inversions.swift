/*
A subsequence is created by deleting zero or more elements from a list while maintaining the order. 
An inversion is a strictly decreasing subsequence of length 3 in this problem.
given i>j>k
*/


// Approach 1

func maxInversions(arr: [Int]) -> Int {
  var length = 0
  for i in 0..<arr.count-1{
    var first = 0
    var second = 0
    for j in i+1..<arr.count{
      if (arr[i]>arr[j]){
        first += 1
      }
    }
    var j = i - 1
    while j >= 0 {
      if arr[i] < arr[j] {
        second += 1
      }
      j -= 1
    }
    length += first*second
  }
  return length
}

// Approach 2

func maxInversions(arr: [Int]) -> Int {
  var length = 0
  for i in 0..<arr.count-2{
    for j in i+1...arr.count-1 {
      if (arr[i]>arr[j]){
        for k in j+1..<arr.count {
          if (arr[j]>arr[k]){
            length += 1
          }
        }
      }
    }
  }
  return length
}


print(maxInversions(arr: [15, 10, 1, 7, 8]))   // 3
print(maxInversions(arr: [4,1,3,2,5]))         // 1
print(maxInversions(arr: [5,4,3,2,1]))         // 10
