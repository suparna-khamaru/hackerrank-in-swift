/*
From a group of arrays containing duplicate numbers, find the largest odd non-duplicate number in an array
*/

//Approach 1

func isBatmanAvailable(posters: [Int]) -> String {
    //guard posters.count % 2 != 0 else { return "NO" }
  if let maxValue = posters.max() {
    let dups = Dictionary(grouping: posters, by: {$0}).filter { $1.count > 1 }.keys
    if dups.contains(maxValue) {
      return "NO"
    } else {
      return "YES"
    }
  }
  return "NO"
}

print(ambiFriends([5,2,5,2,10]))   // yes
print(ambiFriends([7,7,8,8,10]))   // yes
print(ambiFriends([4,3,4,5,5]))    // no
print(ambiFriends([3,5,6,6,3,5]))  // no


//Approach 2 

func ambi(inputArray: [Int]) -> String{
  var mainArray = [Int]()
  
  for value in inputArray {
  
    if mainArray.contains(value) != true {
      mainArray.append(value)
    }
    else if mainArray.contains(value) == true {
      mainArray.remove(at: mainArray.firstIndex(of: value)!)
    }
  }
  if inputArray.max()! > mainArray[0] {
    return "NO"
  }
  else{
    return "YES"
  }
}
