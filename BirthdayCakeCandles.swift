/*
You are in charge of the cake for a child's birthday. 
You have decided the cake will have one candle for each year of their total age. 
They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

Example
candles = [4,4,1,3]
The maximum height candles are 4 units high. There are 2 of them, so return 2.
*/


func birthdayCakeCandles(candles: [Int]) -> Int {
    
    var count = 0
    var max = candles[0]

    for i in 0..<candles.count {
        if(candles[i] > max) {
            max = candles[i]
        }
    }
    for i in 0..<candles.count {
        if(candles[i] == max) {
            count += 1
        }
    }
    return count
}  


print(birthdayCakeCandles(candles: [3,2,1,3]))      // 2
print(birthdayCakeCandles(candles: [4,4,1,3]))      // 2
