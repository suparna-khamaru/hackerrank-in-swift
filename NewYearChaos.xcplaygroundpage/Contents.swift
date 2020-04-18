//: [Previous](@previous)

import Foundation

///new year chaos
func minimumBribes(q: [Int]) -> Void {
    var swap = 0
    var bribe = 0
    var position = 0
    
    for i in 0...q.count-1 {
        var j = 0
        
        bribe = q[position] - (position+1)
        
        if(bribe > 2) {
            print("Too chaotic")
            return
        }
        
        if(q[i]-2 > 0) {
            j = q[i]-2
        }
        
        while (j <= i) {
            if(q[j]>q[i]){
                swap+=1
                print("swap:" ,swap)
            }
            j+=1
        }
        position+=1
    }
    print(swap)
}
//(minimumBribes(q: [1, 5, 3, 4, 2]))
//print(minimumBribes(q: [2, 5, 1, 3, 4]))
//print(minimumBribes(q: [1, 2, 5, 3, 4, 7, 8, 6]))
print(minimumBribes(q: [2,1,5,3,4]))




