
// See problem2.README

// This loop reads in the array of inputted positive integers
var inputArray: [Int] = []
while let inputNum = Int(readLine()!) {
        inputArray.append(inputNum)
}

var inputSum = 0

//adding it all together
for count1 in 0...(inputArray.count - 1){
            inputSum += inputArray[count1]
                }


                //printing -1 if not work
                if inputSum % 2 != 0 || inputSum == 0{
                        print(-1)
                }

                //adding it until sides equal
                var halfArray = 0
                var counti = 0

                //halfArray += inputArray[meh]
                //until halfArray = inputSum/2
                while (halfArray < (inputSum / 2)){
                        halfArray += inputArray[counti]
                            counti += 1
                }
                if halfArray != (inputSum / 2){
                        print(-1)
                }else if halfArray == (inputSum / 2){
                        print(counti)
                }
