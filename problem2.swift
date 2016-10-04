// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
	inputArray.append(inputNum)
}

var point = 0
var j = 0
var k = 0


// Write your balancing code here.

while j < inputArray.count {
	var sum1 = 0
	var sum2 = 0
	for k in 0 ..< j {
		sum1 += inputArray[k]
	}
	for k in j ..< inputArray.count {
		sum2 += inputArray[k]
	}
	if sum1 == sum2 {
		point = j
		j = inputArray.count
	}
	j += 1
}

if point == 0 {
	print("-1")
} else {
	print(point)
}