// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.

var beforeSum = 0
var afterSum = 0
var balance = -1

for testPoint in 0...inputArray.count {
	for x in 0..<testPoint {
		beforeSum += inputArray[x]
	}
	for y in testPoint..<inputArray.count {
		afterSum += inputArray[y]
	}
	if beforeSum == afterSum && !(beforeSum == 0) {
		balance = testPoint
	}

	beforeSum = 0
	afterSum = 0
}

print(balance)
