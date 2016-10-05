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

var xTotal = 0.0
var xAverage = 0.0
for i in 0..<xData.count {
	xTotal += xData [i]
}
xAverage = xTotal / Double (xData.count)

var yTotal = 0.0
var yAverage = 0.0
for i in 0..<yData.count {
	yTotal += yData [i]
}
yAverage = yTotal / Double (yData.count)

var xSquaredAverage = 0.0
var xSquaredTotal = 0.0
for i in 0..<xData.count {
	xSquaredTotal += xData [i] * xData [i]
}
xSquaredAverage = xSquaredTotal / Double (xData.count)

var xyAverage = 0.0
var xyTotal = 0.0
for i in 0..<xData.count {
	xyTotal += xData [i] * yData [i]
}
xyAverage = xyTotal / Double (xData.count)




var m = (xyAverage - xAverage * yAverage) / (xSquaredAverage - xAverage * xAverage)

var b = yAverage - m * xAverage


let mRounded = String.localizedStringWithFormat("%.4f", m)
let bRounded = String.localizedStringWithFormat("%.4f", b)

print ("y = \(mRounded) * x + \(bRounded)")