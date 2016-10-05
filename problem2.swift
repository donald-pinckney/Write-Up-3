// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}
var balanceIndex = -1
	var sum = 0
	var total = 0
// Write your balancing code here.
if inputArray.count > 1 {
	
	for i in 0...inputArray.count - 1 {
		total += inputArray [i]
	}
	//finds the total of the numbers

	for i in 0...inputArray.count - 1 {
		sum += inputArray [i]
		if Double(sum) == Double(total) / 2{
			balanceIndex = i + 1
		}
	}
}


print (balanceIndex)