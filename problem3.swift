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

import Foundation

var x = 0
var y = 0
var z = 0
var w = 0
var l = 0
var k = 0
var g = 0
var m:Double = 0
var b:Double = 0
var xyAvg:Double = 0
var xAvg:Double = 0
var yAvg:Double = 0
var xyData:[Double] = []
var xySum:Double = 0
var ySum:Double = 0
var xSum:Double = 0
var ySquare:[Double] = []
var ySquareSum:Double = 0
var xSquareAvg:Double = 0
var xSquare:[Double] = []
var xSquareSum:Double = 0
var ySquareAvg:Double = 0


while y < yData.count {
    ySum += yData[y]
    y += 1
}

while x < xData.count {
    xSum += xData[x]
    x += 1
}

while z < yData.count {
    ySquare.append(pow(yData[z], 2))
    z += 1
}

while w < xData.count {
    xSquare.append(pow(xData[w], 2))
    w += 1
}

while l < xData.count {
    xyData.append(xData[l] * yData[l])
    l += 1
}

while k < xyData.count {
    xySum += xyData[k]
    k += 1
}

while g < xSquare.count {
    xSquareSum += xSquare[g]
    ySquareSum += ySquare[g]
    g += 1
}

xyAvg = xySum/Double(xyData.count)

xAvg = xSum/Double(xData.count)

yAvg = ySum/Double(yData.count)

xSquareAvg = xSquareSum/Double(xSquare.count)

ySquareAvg = ySquareSum/Double(ySquare.count)

m = (xyAvg - (xAvg * yAvg)) / (xSquareAvg - pow(xAvg, 2))

b = yAvg - m * xAvg

let mRounded = (String.localizedStringWithFormat("%.4f", m))
let bRounded = (String.localizedStringWithFormat("%.4f", b))

print("y = \(mRounded) * x + \(bRounded)")
