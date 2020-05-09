import Foundation

//Reverse the order of the elements in listOfNumbers without creating any additional arrays

var listOfNumbers = [1,2,3,10,100]

func reverseArray(list: [Int]) -> [Int] {
    
    var firstItem = 0
    var lastItem = listOfNumbers.count-1
    
    while firstItem < lastItem {
        
        var temp = listOfNumbers[firstItem]
        listOfNumbers[firstItem] = listOfNumbers[lastItem]
        listOfNumbers[lastItem] = temp
        
        firstItem = firstItem + 1
        lastItem = lastItem - 1
    }
    return listOfNumbers
}

print(reverseArray(list: listOfNumbers)). //import Foundation

//Reverse the order of the elements in listOfNumbers without creating any additional arrays

var listOfNumbers = [1,2,3,10,100]

func reverseArray(list: [Int]) -> [Int] {
    
    var firstItem = 0
    var lastItem = listOfNumbers.count-1
    
    while firstItem < lastItem {
        
        var temp = listOfNumbers[firstItem]
        listOfNumbers[firstItem] = listOfNumbers[lastItem]
        listOfNumbers[lastItem] = temp
        
        firstItem = firstItem + 1
        lastItem = lastItem - 1
    }
    return listOfNumbers
}

print(reverseArray(list: listOfNumbers)) //import Foundation

//Reverse the order of the elements in listOfNumbers without creating any additional arrays

var listOfNumbers = [1,2,3,10,100]

func reverseArray(list: [Int]) -> [Int] {
    
    var firstItem = 0
    var lastItem = listOfNumbers.count-1
    
    while firstItem < lastItem {
        
        var temp = listOfNumbers[firstItem]
        listOfNumbers[firstItem] = listOfNumbers[lastItem]
        listOfNumbers[lastItem] = temp
        
        firstItem = firstItem + 1
        lastItem = lastItem - 1
    }
    return listOfNumbers
}

print(reverseArray(list: listOfNumbers))  //[100, 10, 3, 2, 1]



