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

//M
//multiply xData by corresponding yData, store in  xyData THEN avg as xyCoAvg
var xyData: [Double] = []
for i in 0...(xData.count - 1){ //MULT xData value to corresponding yData, storing
	xyData.append(xData[i] * yData[i])
}
var xyCoAvg: Double = 0
for i in 0...(xData.count - 1){ //storing avg of xyData in xyCoAvg
	xyCoAvg += xyData[i]
}

xyCoAvg /= Double(xData.count)

//Avg of xdat and ydat SEPERATELY, multiply avgs together
var xAvg: Double = 0
for i in 0...(xData.count - 1){
	xAvg += xData[i]
}
xAvg /= Double(xData.count)

var yAvg: Double = 0
for i in 0...(yData.count - 1){
	yAvg += yData[i]
}
yAvg /= Double(xData.count)

let xyAvg = (yAvg * xAvg)

//square every x value sperately, THEN avg all values
var xsq: [Double] = []
for i in 0...(xData.count - 1){
        xsq.append(pow (xData[i], 2))
}

var xsqAvg: Double = 0
for i in 0...(xsq.count - 1){ //avg of all sqrd x values
        xsqAvg += xsq[i]
}
xsqAvg /= Double(xsq.count)

let xAvgsq = pow(xAvg, 2)

//REAL MMMMM
let m = (xyCoAvg - xyAvg) / (xsqAvg - xAvgsq)
//BBBBBBBBB
let b = yAvg - m * xAvg

//THE BIG BOI GO PRINT AYYYYwait no I need to round it
let mRounded = String.localizedStringWithFormat("%.4f", m)
let bRounded = String.localizedStringWithFormat("%.4f", b)

//THE BIG BOI AGAIN LETS PRINT THE OUTPUT AYYYY
print("y = \(mRounded) * x + \(bRounded)")




