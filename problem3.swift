// See problem3.README

import Foundation

// This loop reads in the array of known X values
var xData: [Double] = []
while let inputNum = Double(readLine()!) {
	xData.append(inputNum)
}

// This loop reads in the array of known Y values
var yData: [Double] = []
while let inputNum = Double(readLine()!) {
    yData.append(inputNum)
}


// Write your linear regression code here

//Creates constants to easily refer to the length of the strings.
let xLength: Double = Double(xData.count)
let yLength: Double = Double(yData.count)

//Prevents code from running into an error.
if xLength != yLength {
	print("You do not have the same number of x-values and y-values!")
} else {

//Sets up variables so that they can be used outside of the loops.
var xSum: Double = 0
var ySum: Double = 0
var xySum: Double = 0
var x2Sum: Double = 0

//Computes all the the sums needed for calculating the averages.
for index in 0 ..< xData.count {
	
	//Creates easy to refer to constants.
	let x: Double = xData[index]
	let y: Double = yData[index]

	xSum += x
	ySum += y
	xySum += x * y
	x2Sum += pow(x, 2)
}

//Creates the averages as constants, since they do not need to be changed now.
let xAvg: Double = xSum / xLength
let yAvg: Double = ySum / yLength
let xyAvg: Double = xySum / xLength
let x2Avg: Double = x2Sum / xLength

//Calculates m and b.
let m = (xyAvg - xAvg * yAvg) / (x2Avg - (xAvg * xAvg))
let b = yAvg - m * xAvg

//Rounds m and b. This should work, but I can't figure out a way around it.
let mRounded = String.localizedStringWithFormat("%.4f", m)
let bRounded = String.localizedStringWithFormat("%.4f", b)

//Prints final result.
print("y = \(mRounded) * x + \(bRounded)")

}