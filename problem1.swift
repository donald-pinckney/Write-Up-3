// See problem1.README

// Note that the elements in this array are unique
let data = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!
var contained = false

for i in 0..<(data.count) {
	if wantToFind == data[i] {
	contained = true
	print(i)
	}
}
if contained == false {
print(-1)
}