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

// Get x average
var xDataAvg: Double = 0
for entry in xData {
	xDataAvg = xDataAvg + entry
}
xDataAvg = xDataAvg / Double(xData.count)

// Get y average
var yDataAvg: Double = 0
for entry in yData {
	yDataAvg = yDataAvg + entry
}
yDataAvg = yDataAvg / Double(yData.count)


// Get x*y average
var xyDataAvg: Double = 0
for i in 0..<xData.count {
	xyDataAvg = xyDataAvg + xData[i] * yData[i]
}
xyDataAvg = xyDataAvg / Double(xData.count) 

// Get x^2 average
var xSqDataAvg: Double = 0
for entry in xData {
	xSqDataAvg = xSqDataAvg + pow(entry,2)
}
xSqDataAvg = xSqDataAvg / Double(xData.count)

// Compute the value of m
var m: Double = 0
m = (xyDataAvg - (xDataAvg * yDataAvg)) / (xSqDataAvg - pow(xDataAvg,2))

// Compute the value of b
var b: Double = 0
b = yDataAvg - m * xDataAvg

// Round m and b
let mRounded: String = String.localizedStringWithFormat("%.4f", m)
let bRounded: String = String.localizedStringWithFormat("%.4f", b)

// Print y = m * x + b
print("y = \(mRounded) * x + \(bRounded)")
