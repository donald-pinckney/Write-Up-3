// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.

var balanced = false

for i in 0..<inputArray.count {
	var sum1 = 0
	var sum2 = 0

	for j in 0..<i {
		sum1 += inputArray[j]
	}

	for j in i..<inputArray.count {
		sum2 += inputArray[j]
	}

	if sum1 == sum2 {
		print(i)
		balanced = true
	}
}

if !balanced {
	print(-1)
}