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
// variables
var m = 0.0
var xSum = 0.0
var b = 0.0
var ySum = 0.0
var productData: [Double] = []
var pSum = 0.0
var xSquares: [Double] = []
var ySquares: [Double] = []
var xSSum = 0.0
var ySSum = 0.0
var xSAvg = 0.0
var ySAvg = 0.0

// Write your linear regression code here

for i in 0 ..< xData.count {
	xSum += xData[i]
}

for i in 0 ..< yData.count {
	ySum += yData[i]
}

for i in 0 ..< xData.count {
	productData.append(xData[i] * yData[i])
}

for i in 0 ..< productData.count {
	pSum += productData[i]

}

for i in 0 ..< xData.count {
	xSquares.append(xData[i] * xData[i])
	ySquares.append(yData[i] * yData[i])
}

for i in 0 ..< xSquares.count {
	xSSum += xSquares[i]
	ySSum += ySquares[i]
}

xSAvg = xSSum/Double(xSquares.count)
ySAvg = ySSum/Double(ySquares.count)
var xAvg = xSum/Double(xData.count)
var yAvg = ySum/Double(yData.count)
var pAvg = pSum/Double(productData.count)

m = (pAvg - (xAvg * yAvg)) / (xSAvg - (xAvg * xAvg))
b = yAvg - m * xAvg
let mRounded = String.localizedStringWithFormat("%.4f", m)
let bRounded = String.localizedStringWithFormat("%.4f", b)

print("y = \(mRounded) * x + \(bRounded)")
