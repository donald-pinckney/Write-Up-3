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

//quick function to find avg of any array
func avgArray(arrayX: [Double]) -> Double {
	//find sum of array
	var sum: Double = 0
	for x in 0..<arrayX.count {
		sum += arrayX[x]
	}
	return sum / Double(arrayX.count)
}

//quick function to multiply arrays
func multArray(arrayX: [Double], arrayY: [Double]) -> [Double] {
	var multArray: [Double] = []

	for x in 0..<arrayX.count {
		multArray.append(arrayX[x] * arrayY[x])
	}

	return multArray
}

func powArray(arrayX: [Double]) -> [Double] {
	var powArray: [Double] = []

	for x in 0..<arrayX.count {
		powArray.append(pow(arrayX[x], 2))
	}

	return powArray
}

// Write your linear regression code here
let xDataAvg = avgArray(arrayX: xData)
let yDataAvg = avgArray(arrayX: yData)
let xymultData = multArray(arrayX: xData, arrayY: yData)
let xpowData = powArray(arrayX: xData)
let avgxymultData = avgArray(arrayX: xymultData)
let avgxpowData = avgArray(arrayX: xpowData)

let m = (avgxymultData - (xDataAvg * yDataAvg)) / (avgxpowData - pow(xDataAvg, 2))
let b = (yDataAvg) - m * (xDataAvg)

let mRounded: String = String.localizedStringWithFormat("%.4f", m)
let bRounded: String = String.localizedStringWithFormat("%.4f", b)

print("y = \(mRounded) * x + \(bRounded)")
