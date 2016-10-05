// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.

var x = 0
var y = 0
var sum = 0
var sumBalance = 0
var balancePoint = 0
var bool = false

while x < inputArray.count {
    sum += inputArray[x]
    x += 1
}

if sum % 2 == 0 {

    balancePoint = sum/2

    while y < inputArray.count {
        sumBalance += inputArray[y]
        y += 1
        if sumBalance == balancePoint {
            print(y)
            bool = true
        }
    }

    if bool == false {
        print(-1)
    }
} else {
    print(-1)
}
