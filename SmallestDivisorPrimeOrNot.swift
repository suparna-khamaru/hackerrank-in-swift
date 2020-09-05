/*
If a number is prime, return 1
If otherwise, return its smallest divisor greater than 1 

related to prime factorisation
*/

func primeOrNot(_ n: Int) -> Int {
    var min = 0
    if n>0 {
        if(n == 2) { min = 1 }
        else if (n%2==0) { min = 2 }
        else if(n%3==0) { min = 3 }
        else if(n%5==0) { min = 5 }
        else { min = 1 }
    }
    return min
}

print(primeOrNot(8))        // 2
print(primeOrNot(2))        // 1
print(primeOrNot(19))       // 1
print(primeOrNot(57))       // 3
print(primeOrNot(97))       // 1
print(primeOrNot(241))      // 1
print(primeOrNot(0))        // 0
print(primeOrNot(1335621))  // 3
print(primeOrNot(25))       // 5
print(primeOrNot(31))       // 1
print(primeOrNot(24))       // 2
