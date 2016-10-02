// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.

//compute total sum (will become the right sum)
var sum = 0	
for index in 0..<inputArray.count {
	sum += inputArray[index]
}

var leftSum = 0		//left sum 


test: while true {
	for index in 0..<inputArray.count {
		//adjust sums by adding and subtracting from 
		//left and right respectively
		sum -= inputArray[index]	
		leftSum += inputArray[index]
		//check to see if balance point has been reached
		if sum == leftSum {
			print(index + 1)
			break test	//exit the infinite loop completely
		}
	}
	//looped through the array without finding a balance point
	print(-1)
	break	//exit the infinite loop
}