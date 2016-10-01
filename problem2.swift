// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.

var balPoint = -1

//Checks every possible balance point by checking the sums of the values before and after it. checkIndex is the possible balcance point.
for checkIndex in 1 ..< inputArray.count {
	//print(checkIndex) //For testing

	var sum1 = 0
	var sum2 = 0

	//Adds all of the values before and after the possible balane point.
	for currentIndex in 0 ..< inputArray.count {
		//print(currentIndex) //For testing

		if currentIndex < checkIndex {
			sum1 += inputArray[currentIndex]
		} else {
			sum2 += inputArray[currentIndex]
		}
	}

	if sum1 == sum2 {
		balPoint = checkIndex
		break
	}
}

//Prints final result.
print(balPoint)