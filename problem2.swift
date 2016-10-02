// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.

//assign and compute total sum of array -> right sum
var sum = 0	
for index in 0..<inputArray.count {
	sum += inputArray[index]
}

//assign left sum
var leftSum = 0

/*
loop through array values
add new value to leftSum and subtract from sum
if sums = -> balance point
if no balance point -> output -1
*/
test: while true {
	for index in 0..<inputArray.count {
		sum -= inputArray[index]	
		leftSum += inputArray[index]
		if sum == leftSum {
			print(index + 1)
			break test	//exit the infinite loop completely
		}
	}
	print(-1)
	break	//exit the infinite loop
}