/*

Alice and Bob each created one problem for HackerRank. A reviewer rates the two challenges, awarding points on a scale from 1 to 100 for three categories: problem clarity, originality, and difficulty.

The rating for Alice's challenge is the triplet a = (a[0], a[1], a[2]), and the rating for Bob's challenge is the triplet b = (b[0], b[1], b[2]).

The task is to find their comparison points by comparing a[0] with b[0], a[1] with b[1], and a[2] with b[2].

If a[i] > b[i], then Alice is awarded 1 point.
If a[i] < b[i], then Bob is awarded 1 point.
If a[i] = b[i], then neither person receives a point.

*/



func compareTriplets(a: [Int], b: [Int]) -> [Int] {

    var countA = 0, countB = 0

    for i in 0..<a.count {
        if a[i] > b[i] {
            countA += 1
        }
        else if a[i] < b[i] {
            countB += 1
        }
    }
    return [countA, countB]
}
    
    
print(compareTriplets(a: [5, 6, 7],
                      b: [3, 6, 10]))  // [1,1]

print(compareTriplets(a: [17, 28, 30],
                      b: [99, 16, 8]))  //[2, 1]
    
