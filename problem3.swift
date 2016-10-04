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
for i in 0...(xData.count - 1){ //storing avg of xyData in xyCoAvg
        var xyCoAvg += xyData[i]
}
var xyCoAvg /= xData.count

//Avg of xdat and ydat SEPERATELY, multiply avgs together
var xAvg = 0
for i in 0...(xData.count - 1){
        xAvg += xData[i]
}

print("xy Corresponging mult: /(xyCoData)")
print("xy co Average: /(xyCoAvg)")
