// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

// Write your balancing code here.


var sum = 0	//will become right sum

for index in 0..<inputArray.count {
	sum += inputArray[index]
}

var leftSum = 0	//to compare to sum (right sum)


test: while true {
	for index in 0..<inputArray.count {
		sum -= inputArray[index]	//makes "sum" "right summ"
		leftSum += inputArray[index]
		if sum == leftSum {
			print(index + 1)
			break test
		}
	}
	print(-1)
	break
}