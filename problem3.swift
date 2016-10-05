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

var xSum = 0.0
var ySum = 0.0

var xAverage = 0.0
var yAverage = 0.0

var m = 0.0
var b = 0.0

var xyData: [Double] = []
var xSquareData: [Double] = []

var xySum = 0.0
var xyAverage = 0.0

var xSquareSum = 0.0
var xSquareAverage = 0.0

for i in 0..<xData.count {
	xSum += xData[i]
	ySum += yData[i]

	xyData.append(xData[i] * yData[i])
	xySum += xyData[i]

	xSquareData.append(xData[i] * xData[i])
	xSquareSum += xSquareData[i]
}

xAverage = xSum / Double(xData.count)
yAverage = ySum / Double(xData.count)

xyAverage = xySum / Double(xyData.count)


xSquareAverage = xSquareSum / Double(xSquareData.count)

m = (xyAverage - (xAverage) * (yAverage)) / (xSquareAverage - (xAverage * xAverage))
b = (yAverage) - m * (xAverage)

let mRounded: String = (String.localizedStringWithFormat("%.4f", m))
let bRounded: String = (String.localizedStringWithFormat("%.4f", b))

print ("y = \(mRounded) * x + \(bRounded)")