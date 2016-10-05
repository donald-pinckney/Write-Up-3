// See problem1.README

// Note that the elements in this array are unique
let data = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!
var x = 0
var bool = false

while x < data.count {
    if data[x] == wantToFind {
        print(x)
        x += 1
        bool = true
    } else {
        x += 1
    }
}

if bool == false {
    print(-1)
}