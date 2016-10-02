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

let count = xData.count
var sumx: Double = 0
var sumy: Double = 0
var xDatasq: [Double] = []
var sumxsq: Double = 0
var xyData: [Double] = []
var sumxy: Double = 0

//find xDatasq and xyData
for index in 0..<count {
	xDatasq.append( pow(xData[index], 2.0) )
	xyData.append(xData[index] * yData[index])	//May need Double()
}

//find all sums 
for index in 0..<count {
	sumx += xData[index]
	sumy += yData[index]
	sumxsq += xDatasq[index]
	sumxy += xyData[index]
}
 //find all averages
let avgx = sumx / Double(xData.count)
let avgy = sumy / Double(yData.count)
let avgxsq = sumxsq / Double(xDatasq.count)
let avgxy = sumxy / Double(xyData.count)

//compute m
let m = (avgxy - avgx * avgy) / (avgxsq - pow(avgx, 2.0)) 

//compute b
let b = avgy - (m * avgx)	

//round to 4 decimals
let mRounded = String.localizedStringWithFormat("%.4f", m)
let bRounded = String.localizedStringWithFormat("%.4f", b)

print("y = \(mRounded) * x + \(bRounded)")