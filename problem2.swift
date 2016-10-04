// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.
var balanceExists = false

for i in 0..<(inputArray.count) {
	if balanceExists == false {
		var firstSum = 0
		var secondSum = 0

		for j in 0..<i {
			firstSum = firstSum + inputArray[j]
		}
		for j in i..<(inputArray.count) {
			secondSum = secondSum + inputArray[j]
		}
		
		if firstSum == secondSum {
			balanceExists = true
			print(i)
		}
	}
}

if balanceExists == false {
	print(-1)
}


