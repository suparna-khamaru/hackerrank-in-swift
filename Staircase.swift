//Approach 1

func staircase1(n: Int) {
        
    var counter = n-1

    for _ in 0..<n {
        for j in 0..<n {
            if (j >= counter) {
                print("#", terminator: "")
            }
            else {
                print(" ", terminator: "")
            }
            if (j == n-1) { print("") }
        }
        counter -= 1
    }
}

//Approach 2

func staircase2(n: Int) {
        
    for i in 1...n {

        var row = ""
        let space = n-i
        let hash = n-space

        row += String(repeating: Character(" "), count: space)
        row += String(repeating: Character("#"), count: hash)

        print(row)
    }
}
    
print(staircase1(n: 4))      

/*
        Output:
           #
          ##
         ###
        ####
*/
   
print(staircase2(n: 6))  

/*
        Output:
           #
          ##
         ###
        ####
       #####
      ######
*/




/*
Flow for understanding:

i = 0 
        j = 0,1,2,3
        p = 0,0,0,1

i = 2 
        j = 0,1,2,3
        p = 0,0,1,1

i = 3 
        j = 0,1,2,3
        p = 0,1,1,1

i = 4 
        j = 0,1,2,3
        p = 1,1,1,1

where, 
- p denotes printed output
- 0 in p denotes spaces
- 1 in p denotes hashes
*/
