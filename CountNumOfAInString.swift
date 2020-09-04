func countNumOfCharsInString(_ param: String) -> Int {
        
    let statement = Array(param)
    var counter = 0

    for item in statement {
        if item == "a" {
            counter += 1
        }
    }
    return counter
 }
    
print(countNumOfCharsInString("abcd"))        // 1
print(countNumOfCharsInString("abcda"))       // 2
print(countNumOfCharsInString("abcdaaaa"))    // 5
print(countNumOfCharsInString("bcde"))        // 0
