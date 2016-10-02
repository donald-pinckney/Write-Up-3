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

//average xData
var sumx: Double = 0
for x in xData {
	sumx += x
}
let avgx = sumx / Double(xData.count)

//average xData^2 -> xDatasq
var xDatasq: [Double] = []
var sumxsq: Double = 0
for index in 0..<xData.count {
	xDatasq.append( pow(xData[index], 2.0) )
}
for xsq in xDatasq {
	sumxsq += xsq
}
let avgxsq = sumxsq / Double(xDatasq.count)

//average yData
var sumy: Double = 0
for y in yData {
	sumy += y
}
let avgy = sumy / Double(yData.count)

//average xData*yData -> xyData
var xyData: [Double] = []
var sumxy: Double = 0
for index in 0..<xyData.count {
	xyData.append(xData[index] + yData[index])
}
for xy in xyData {
	sumxy += xy
}
let avgxy = sumxy / Double(xyData.count)

//compute m
let m = (avgxy - avgx * avgy) / (avgxsq - pow(avgx, 2.0)) 

//compute b
let b = avgy - m * avgx

//round to 4 decimals
let mRounded = String.localizedStringWithFormat("%.4f", m)
let bRounded = String.localizedStringWithFormat("%.4f", b)

print("y = \(mRounded) * x + \(bRounded)")