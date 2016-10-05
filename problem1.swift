// See problem1.README

// Note that the elements in this array are unique
let data = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!

var foundIndex = -1

//Checks each value in the array, and canges foundIndex to the right index # if the value is found.
for currentIndex in 0..<data.count {

	if wantToFind == data[currentIndex] {
		foundIndex = currentIndex
	}
}

print(foundIndex)