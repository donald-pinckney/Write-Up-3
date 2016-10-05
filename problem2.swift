// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.
var oneSum = 0
var twoSum = 0
var balance = -1

for x in 0..<inputArray.count{
	for y in 0..<inputArray.count{
		if y < x{
			oneSum += inputArray[y]
		}
		else{
			twoSum += inputArray[y]
		}
	}
	if oneSum == twoSum{
		balance = x
		break
	}
	oneSum = 0
	twoSum = 0
}
print(balance)
