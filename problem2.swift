// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.
func calcEquilibrium(array: [Int], i: Int) -> Int {
	var sumAfter = 0
	var sumBefore = 0

	for x in i..<array.count {
		sumAfter += array[x]
	}

	for x in 0..<i {
		sumBefore += array[x]
	}

	if sumBefore == sumAfter {
		return i
	}

	return -1
}

var quit = false
var equilibrium = -1

for x in 0..<inputArray.count {
	if calcEquilibrium(array: inputArray, i: x) != -1 {
		equilibrium = calcEquilibrium(array: inputArray, i: x)
	}
}

print(equilibrium)
