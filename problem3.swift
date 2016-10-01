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

// Computing average of x and y data

var xyindex = 0
var xysum: Double = 0

while xyindex < xData.count {
    xysum = xysum + xData[xyindex]*yData[xyindex]
    xyindex += 1
}

let avxy: Double = xysum / Double(xData.count)

// Computing average of x data

var xindex = 0
var xsum: Double = 0

while xindex < xData.count {
    xsum = xsum + xData[xindex] 
    xindex += 1
}

let avx: Double = xsum / Double(xData.count)
let avx_2: Double = pow (avx, 2) 

// Computing average of y data

var yindex = 0
var ysum: Double = 0

while yindex < yData.count {
    ysum = ysum + yData[yindex]
    yindex += 1
}

let avy: Double = ysum / Double(yData.count)

// Computing average of x squared data

xindex = 0
var xsqsum: Double = 0

while xindex < xData.count {
    xsqsum = xsqsum + pow (xData[xindex], 2) 
    xindex += 1
} 

let xsqav: Double = xsqsum / Double(xData.count)

// Calculating m and b

let m: Double = (avxy - (avx * avy)) / (xsqav - avx_2)
let b: Double = avy - (m * avx) 


print ("y = \(String.localizedStringWithFormat ("%.4f", m)) * x + \(String.localizedStringWithFormat ("%.4f", b))")  







