// See problem1.README

// Note that the elements in this array are unique
let data = [19, 524, 95, 627, 230, 960, 150, 880, 659, 724, 420, 215, 470, 787, 883, 269, 678, 718, 329, 355]

let wantToFind = Int(readLine()!)!
var index = 0
var found = false

while index < data.count {

  if data[index] == wantToFind {
    print (index)
    found = true
    break
  }

  else {
    index += 1
  }

}

if !found {
  print (-1)
}
