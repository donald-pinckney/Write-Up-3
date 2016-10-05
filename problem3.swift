//m equation: `m = (average of xData*yData) - (average of xData)*(average of yData) / (average of xData^2) - ((average of xData)^2)`
// b equation: `b = (average of yData) - m * (average of xData)`

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
var xyAverage: Double = 0
var xAverage: Double = 0
var yAverage: Double = 0
var xAveyAve: Double = 0
var xSquareAverage: Double = 0
var xAverageSquare: Double = 0
var m: Double = 0
var b: Double = 0

// setting xyAverage
for z in 0..<xData.count{
	xyAverage += (xData[z] * yData[z])
}
xyAverage /= Double(xData.count)

// setting xAverage
for z in 0..<xData.count{
	xAverage += (xData[z])
}
xAverage /= Double(xData.count)

// setting yAverage
for z in 0..<yData.count{
	yAverage += (yData[z])
}
yAverage /= Double(yData.count)

// setting xAveyAve
xAveyAve = (xAverage * yAverage)

// setting xSquareAverage
for z in 0..<xData.count{
	xSquareAverage += (xData[z] * xData[z])
}
xSquareAverage /= Double(xData.count)

// setting xAverageSquare
xAverageSquare = (xAverage * xAverage)

m = (xyAverage - xAveyAve) / (xSquareAverage - xAverageSquare)

b = yAverage - m * xAverage

print("y = \(String.localizedStringWithFormat("%.4f", m)) * x + \(String.localizedStringWithFormat("%.4f", b))")
