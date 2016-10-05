// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
var sum = 0
var half = 0
var balance = 0
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}
for i in inputArray {
	sum = sum + i
}

if ( sum % 2 == 0 ) && ( inputArray.count > 0 ) {
	half = sum / 2
	for x in 0..<(inputArray.count) {
	balance = balance + inputArray[x]
	if balance == half {
	print(x+1)
	} else if x == inputArray.count - 1 {
	print (-1)
	}
	}
} else {
	print(-1)
}
// Write your balancing code here.


