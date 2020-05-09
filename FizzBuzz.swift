import Foundation

func fizzBuzz(n: Int) -> Void {
    for m in 1...n {
        if(m%15==0) {
            print("FizzBuzz")
        }
        else if(m%3==0) {
            print("Fizz")
        }
        else if(m%5==0) {
            print("Buzz")
        }
        else {
            print(m)
        }
    }
}

fizzBuzz(n: 15)



