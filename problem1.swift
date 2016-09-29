// See problem1.README

// Note that the elements in this array are unique
let data = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!

var search = -1
var loc = 0

while loc < data.count {
  if data[loc] == wantToFind {
    search = loc
    break
  }
  loc += 1
}

print(search)
