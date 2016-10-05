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

var xyproduct: [Double] = []
var xsquared: [Double] = []

if ( yData.count == xData.count ) && ( yData.count > 0 ) {
	let Datacount = Double(yData.count)

	var ysum: Double = 0
	var xsum: Double = 0
	var xysum: Double = 0
	var xsquaredsum: Double = 0
	for x in 0..<(xData.count) {
	ysum = ysum + yData[x]
	xsum = xsum + xData[x]

	xysum = xysum + (xData[x]*yData[x])
	xyproduct.append(xData[x]*yData[x])
	xsquaredsum = xsquaredsum + (pow(xData[x],2))
	xsquared.append(pow(xData[x],2))
	}
	let xyav = xysum / Datacount
	let xav = xsum / Datacount
	let yav = ysum / Datacount
	let xsqaredav = xsquaredsum / Datacount
	let m = (xyav - xav * yav) / (xsquaredav - pow(xav,2))
	let b = yav - m * xav
	let mRounded = print(String.localizedStringWithFormat("%.4f", m))
	let bRounded = print(String.localizedStringWithFormat("%.4f", b))
	print(y = \(mRounded) * x + \(bRounded))
}else{
	print(Incorrect list entry)
}