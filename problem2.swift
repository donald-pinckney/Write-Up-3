// See problem2.README

// This loop reads in the array of inputted positive integers
var inarray: [Int] = []

while let inputNum = Int(readLine()!) {
	inarray.append(inputNum)
}

var index = 0
var sum = 0

while index < inarray.count {
    sum = sum + inarray[index]
    index = index + 1
} 

// Balancing sum cannot be odd

if sum % 2 != 0 || sum == 0 {
    print (-1)
}

else {
    let balancesum = sum/2
    var n = 0
    var leftsum = 0

        while n < inarray.count {
            leftsum = leftsum + inarray[n]
                
            if leftsum == balancesum {
                print ( n+1 ) 
                break
            }

            else if leftsum > balancesum {
                print ( -1 ) 
                break
            }
            n += 1
        } 

} 
