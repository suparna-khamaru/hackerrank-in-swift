//: [Previous](@previous)

import Foundation

func pageCount(n: Int, p: Int) -> Int {
    let total_LR = n/2
    let pc_LR = p/2
    let pc_RL = total_LR - pc_LR

    return min(pc_LR, pc_RL)
}

print(pageCount(n: 6, p: 2))
print(pageCount(n: 5, p: 4))
