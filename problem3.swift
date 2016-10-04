// See problem3.README

import Foundation

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

var xyProduct: [Double] = []
var xSquared: [Double] = []

// Write your linear regression code here
if xData.count == yData.count && xData.count > 0 {
	let size = Double(xData.count)

	var xSum: Double = 0
	var ySum: Double = 0
	var xySum: Double = 0
	var xSquaredSum: Double = 0
	for i in 0..<(xData.count) {
		xySum = xySum + xData[i]*yData[i]
		xyProduct.append(xData[i]*yData[i])

		xSquaredSum = xSquaredSum + pow(xData[i],2)
		xSquared.append(pow(xData[i],2))

		xSum = xSum + xData[i]
		ySum = ySum + yData[i]
	}

	let xAvg = xSum / size
	let yAvg = ySum / size
	let xyAvg = xySum / size
	let xSquaredAvg = xSquaredSum / size

	let m = (xyAvg - xAvg * yAvg)/(xSquaredAvg - pow(xAvg, 2))
	let b = (yAvg) - m * (xAvg)

	let mRounded = String.localizedStringWithFormat("%.4f", m)
	let bRounded = String.localizedStringWithFormat("%.4f", b)

	print("y = \(mRounded) * x + \(bRounded)")
} else {
	print("Invalid list formats.")
}