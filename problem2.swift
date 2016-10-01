// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
var total = 0
var balanceTotal = 0
var testTotal = 0
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Get the sum of all elements in inputArray
for i in inputArray {
	total = total + i 
}
// Check if a balance point exists
if total % 2 == 0 {
	balanceTotal = total / 2
	// Test each sum against total
	for j in 0..<inputArray.count {
		testTotal = testTotal + inputArray[j]
		if testTotal == balanceTotal {
		print(j)
		break
		}
	}
} else {
	print(-1)
}
