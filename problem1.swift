// See problem1.README

// Note that the elements in this array are unique
let data = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!
var i = -1
var x = 0

while wantToFind != x && i < data.count {
	i += 1
	if i < data.count {
		x = data[i]
	}
}

if i < data.count {
	print(i)
} else {
	print(-1)
}
