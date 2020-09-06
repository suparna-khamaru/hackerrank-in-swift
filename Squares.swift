/*
Squares --> a^2 + b^2 = c^2

Constraints: 3 <= N <= 2000
array elements are natural numbers <=10000000

Output: 
return YES if there exists a triplet of array elements satisfying the given condition
return NO if no triplets can exist
*/

//Approach 1:

func squares(_ n: Int, _ array: [Int] ) -> String {
        
    var a = 0
    var b = 1
    var c = 2

    let newarray = array.sorted()   //1,3,4,5,10

    var arrayC: Int
    var arrayA: Int
    var arrayB: Int

    while c != newarray.count {

        arrayC = newarray[c]
        arrayA = newarray[a]
        arrayB = newarray[b]

        if ((arrayC*arrayC) == (arrayA*arrayA) + (arrayB*arrayB)) {
            return "Yes"
        }
        else {
            c += 1
            b += 1
            a += 1
        }
    }
    return "No"
}
    
print(squares(5, [3,10,4,5,1]))                       // Yes
print(squares(2000, Array(0...2000)))                 // Yes
print(squares(2000, Array(0...2000).shuffled()))      // Yes 

   
   
// Approach 2 

func ramanujamHardy(inputArray: [Int], sum: Int) {
  var secondValue = 0
  var firstValue = 0
 
  for element in inputArray {
    let difference = sum*sum - element*element
    firstValue = element
    let x = Double(difference)
    let squaredValue = sqrt(x)
    
    if sqrt(x) - floor(sqrt(x)) == 0{
      let value = Int(squaredValue)
      
      if inputArray.contains(value){
        secondValue = value
        print("firstValue ---> ",firstValue,"secondValue ---> ",secondValue)
        return
      }
    }
  }
}

