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

var products: [Double] = []
var xSquares: [Double] = []
var xSum: Double = 0
var ySum: Double = 0
var productsSum: Double = 0
var xSquaresSum: Double = 0

for i in 0..<xData.count {
	let indProduct = xData[i] * yData[i]
	products.append(indProduct)
	let xSquared = xData[i] * xData[i]
	xSquares.append(xSquared)
}

for j in 0..<xData.count {
	xSum += xData[j]
	ySum += yData[j]
	productsSum += products[j]
	xSquaresSum += xSquares[j]
}

let xAvg = xSum / Double(xData.count)
let yAvg = ySum / Double(yData.count)
let productsAvg = productsSum / Double(products.count)
let xSquaresAvg = xSquaresSum / Double(xSquares.count)

let m = (productsAvg - (xAvg * yAvg)) / (xSquaresAvg - (xAvg * xAvg))
let b = yAvg - m * xAvg

let mRounded = String.localizedStringWithFormat("%.4f", m)
let bRounded = String.localizedStringWithFormat("%.4f", b)

print("y = \(mRounded) * x + \(bRounded)")
